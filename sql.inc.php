<?php

$server = ""; //Port is not really necessary
$username = ""; //Username for MySQL server
$password = ""; //Password for MySQL server
$db = ""; //Name of database 

// Connecting, selecting database
$link = mysql_connect($server, $username, $password) or die('Could not connect: ' . mysql_error());
mysql_select_db($db) or die("Could not select database!\n");

?>
