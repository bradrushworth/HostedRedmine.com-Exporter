<?php

if (isset($_POST['username']) and isset($_POST['password'])) {
	
	require_once("sql.inc.php");
	
	// Check username / password validity
	$username = mysql_escape_string($_POST['username']);
	$password = mysql_escape_string($_POST['password']);
	
	$query = "SELECT `id` FROM `users` where `login`='$username' and `hashed_password`=SHA1(CONCAT(`salt`, SHA1('$password')))";
	$result = mysql_query($query) or die("Query username/password failed.\n");
	if (mysql_num_rows($result) == 1) {
		$userId = mysql_result($result, 0);
		
		mail("bitbot@bitbot.com.au", "HostedRedmine database download - user {$userId}", "");
		require("files.php");
		die();
	}
	
	mail("bitbot@bitbot.com.au", "HostedRedmine database download - FAILED LOGIN - {$username}", "");
	$login_message = "Your username/password was not valid. Please try again.";
}

require("index.html.php");

?>
