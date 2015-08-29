<?php


if (!isset($userId)) {
	die("You did not set the input User ID!\n");
}


require_once("sql.inc.php");
require_once("zip.inc.php");


$zip_file = "files_{$userId}.zip";
$disk_filename_path = "files";


// Export the database
require('database.php');


// All the filenames to include in zip
$disk_filenames = array($database_file);


// Prepare attachments
if (!empty($attachments)) {
	
	// Get attachment disk filenames
	$query = "SELECT `disk_filename` FROM `attachments` where `id` IN ($attachments)";
	$result = mysql_query($query) or die("Query messages failed: ".mysql_error()."\n");
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$disk_filenames[] = $disk_filename_path . "/" . $row[0];
	}

}


// Download attachment files from Amazon S3
echo "Running ./s3_exporter.py {$userId}";
shell_exec("/usr/local/bin/python s3_exporter.py {$userId}");


// Create the zip file
$zip_status = create_zip($disk_filenames, $zip_file, true);
if ($zip_status) {
	
	// Clean up inputs
//	unlink($database_file);
	foreach($disk_filenames as $file) {
//		echo "Adding file: ".$file."<br>\n";
		unlink($file);
	}
	
	// Stream the file to the client
	header("Content-Type: application/zip");
	header("Content-Length: " . filesize($zip_file));
	header("Content-Disposition: attachment; filename={$zip_file}");
	header('Content-Transfer-Encoding: binary');
	header('Expires: 0');
	header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
	header('Pragma: public');
	ob_clean();
	flush();
	readfile($zip_file);
	
	// Clean up outputs
	unlink($zip_file);
	
} else {
	echo "Failed to create zip file!\n";
}

?>
