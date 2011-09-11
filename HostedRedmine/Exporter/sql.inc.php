<?php

$server = "174.136.100.195"; //Port is not really necessary
$username = "hostedredmine_ex"; //Username for MySQL server
$password = "d7XpmTAWFcf9U7Na"; //Password for MySQL server
$db = "hostedredmine"; //Name of database 

if (PHP_SAPI === 'cli') {
	if (count($argv)==2) {
		$userId = $argv[1];
	}
} else {
	if (isset($_GET['user'])) {
		$userId = $_GET['user'];
	}
}

if (!isset($userId)) {
	die("You did not set the input User ID!\n");
}

// Connecting, selecting database
$link = mysql_connect($server, $username, $password) or die('Could not connect: ' . mysql_error());
mysql_select_db($db) or die("Could not select database!\n");

// Escape inputs
$userId = mysql_real_escape_string($userId);

?>
