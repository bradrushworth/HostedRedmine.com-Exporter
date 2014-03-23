<?php

/* creates a compressed zip file */
function create_zip($files = array(),$destination = '',$overwrite = false) {
	//if the zip file already exists and overwrite is false, return false
	if(file_exists($destination) && !$overwrite) { return false; }
	//vars
	$valid_files = array();
	//if files were passed in...
	if(is_array($files)) {
		//cycle through each file
		foreach($files as $file) {
//			echo "Looking for file: ",$file,"<br>\n";
			//make sure the file exists
			if(file_exists($file)) {
				$valid_files[] = $file;
			}
		}
	}
//	echo "We have ".count($valid_files)." files: ";
//	print_r($valid_files);
	//if we have good files...
	if(count($valid_files)) {
		//create the archive
		$zip = new ZipArchive();
		if($zip->open($destination,$overwrite ? ZIPARCHIVE::OVERWRITE : ZIPARCHIVE::CREATE) !== true) {
			echo "Failed to open file!\n";
			return false;
		}

		//add the files
		foreach($valid_files as $file) {
//			echo "Adding file: ".$file."<br>\n";
			$zip->addFile($file,$file);
		}
		
		//close the zip -- done!
		$zip->close();

                //debug
                //echo 'The zip archive ',$destination,' contains ',$zip->numFiles,' files with a status of ',$zip->status,' and file exists ',file_exists($destination),'';
		
		//check to make sure the file exists
//		if ($zip->status != 0) {
//			echo "Zip status is: ",$zip->status;
//		}
		return file_exists($destination);
	}
	else
	{
		return false;
	}
}

?>
