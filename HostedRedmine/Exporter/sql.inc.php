<?php

$server = "localhost";	  //Port is not really necessary
$username = "root"; 	   //Username for MySQL server
$password = "bonger84"; 		   //Password for MySQL server
$db = "hostedredmine";			  //Name of database 

if (PHP_SAPI === 'cli') {
	if (count($argv)==2) {
		$userId = $argv[1];
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