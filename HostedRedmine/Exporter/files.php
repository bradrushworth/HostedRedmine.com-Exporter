<?php

require("sql.inc.php");
require("zip.inc.php");


$disk_filename_path = "../../files";


// Find projects used by user
$query = "SELECT `project_id` FROM `members` where `user_id`='$userId'";
$result = mysql_query($query) or die("Query projects failed: ".mysql_error()."\n");
$projects = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$projects .= $row[0] . ",";
	//echo "projects: {$row[0]}\n";
}
$projects = substr($projects, 0, -1);

// Find wikis by project
$query = "SELECT `id` FROM `wikis` where `project_id` IN ($projects)";
$result = mysql_query($query) or die("Query wikis failed: ".mysql_error()."\n");
$wikis = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$wikis .= $row[0] . ",";
	//echo "wikis: {$row[0]}\n";
}
$wikis = substr($wikis, 0, -1);

// Find versions by project
$query = "SELECT `id` FROM `versions` where `project_id` IN ($projects)";
$result = mysql_query($query) or die("Query versions failed: ".mysql_error()."\n");
$versions = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$versions .= $row[0] . ",";
	//echo "versions: {$row[0]}\n";
}
$versions = substr($versions, 0, -1);

// Find documents by project
$query = "SELECT `id` FROM `documents` where `project_id` IN ($projects)";
$result = mysql_query($query) or die("Query documents failed: ".mysql_error()."\n");
$documents = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$documents .= $row[0] . ",";
	//echo "documents: {$row[0]}\n";
}
$documents = substr($documents, 0, -1);

// Find issues by project
$query = "SELECT `id` FROM `issues` where `project_id` IN ($projects)";
$result = mysql_query($query) or die("Query issues failed: ".mysql_error()."\n");
$issues = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$issues .= $row[0] . ",";
	//echo "issues: {$row[0]}\n";
}
$issues = substr($issues, 0, -1);

// Find boards by project
$query = "SELECT `id` FROM `boards` where `project_id` IN ($projects)";
$result = mysql_query($query) or die("Query boards failed: ".mysql_error()."\n");
$boards = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$boards .= $row[0] . ",";
	//echo "boards: {$row[0]}\n";
}
$boards = substr($boards, 0, -1);

if (!empty($boards)) {
	
	// Find messages by project
	$query = "SELECT `id` FROM `messages` where `board_id` IN ($boards)";
	$result = mysql_query($query) or die("Query messages failed: ".mysql_error()."\n");
	$messages = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$messages .= $row[0] . ",";
		//echo "messages: {$row[0]}\n";
	}
	$messages = substr($messages, 0, -1);
	
}


// Find attachments
$query = "SELECT `id` FROM `attachments` where ";
if (!empty($documents)) $query .= "(`container_type`='Document' AND `container_id` IN ($documents)) OR ";
if (!empty($wikis))     $query .= "(`container_type`='WikiPage' AND `container_id` IN ($wikis)) OR ";
if (!empty($versions))  $query .= "(`container_type`='Version' AND `container_id` IN ($versions)) OR ";
if (!empty($projects))  $query .= "(`container_type`='Project' AND `container_id` IN ($projects)) OR ";
if (!empty($issues))    $query .= "(`container_type`='Issue' AND `container_id` IN ($issues)) OR ";
if (!empty($messages))  $query .= "(`container_type`='Message' AND `container_id` IN ($messages)) OR ";
$query .= "FALSE";
$result = mysql_query($query) or die("Query attachments failed: ".mysql_error()."\n");
$attachments = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$attachments .= $row[0] . ",";
	//echo "attachments: {$row[0]}\n";
}
$attachments = substr($attachments, 0, -1);


if (!empty($attachments)) {
	
	// Get attachment disk filenames
	$query = "SELECT `disk_filename` FROM `attachments` where `id` IN ($attachments)";
	$result = mysql_query($query) or die("Query messages failed: ".mysql_error()."\n");
	$disk_filename = array();
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		//$disk_filename .= '"' . $disk_filename_path . "/" . $row[0] . '"' . ",";
		$disk_filename[] = $row[0];
		//echo "disk_filename: {$row[0]}\n";
	}
	
	if (create_zip($disk_filename, 'my-archive.zip')) {
		echo "Successful!\n";
	} else {
		echo "Failed!\n";
	}
	
}

?>