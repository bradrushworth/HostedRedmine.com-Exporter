<?php

if($_POST['username'] and $_POST['password'] ) {
	
	require_once("sql.inc.php");
	
	// Check username / password validity
	$username = mysql_escape_string($_POST['username']);
	$password = mysql_escape_string($_POST['password']);
	
	$query = "SELECT `id` FROM `users` where `login`='$username' and `hashed_password`=PASSWORD('$password')";
	$result = mysql_query($query) or die("Query username/password failed.\n");
	if (mysql_num_rows($result) == 1) {
		$userId = mysql_result($result, 0);
		
		mail("bitbot@bitbot.com.au", "HostedRedmine database download - user {$userId}", "");
		require("files.php");
		die();
	}
	
	mail("bitbot@bitbot.com.au", "HostedRedmine database download - FAILED LOGIN - {$username}, {$password}", "");
	$login_message = "Your username/password was not valid. Please try again.";
}

require("index.html.php");

?>