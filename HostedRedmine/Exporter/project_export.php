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
$link = mysqli_connect($server, $username, $password) or die('Could not connect: ' . mysql_error());
$link->select_db($db) or die("Could not select database!\n");

// Escape inputs
$userId = $link->real_escape_string($userId);

// Find relevant user
$query = "SELECT * FROM `users` where `id`='$userId'";
$result = $link->query($query) or die("Query failed: ".$link->error."\n");



// Printing results
/*
while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
	foreach ($row as $key=>$val) {
		echo "$key => $val\n";
	}
	echo "\n\n";
}
*/



// Find projects used by user
$query = "SELECT `project_id` FROM `members` where `user_id`='$userId'";
$result = $link->query($query) or die("Query projects failed: ".$link->error."\n");
$projects = "";
while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
	$projects .= $row[0] . ",";
	//echo "projects: {$row[0]}\n";
}
$projects = substr($projects, 0, -1);
//echo "\n";

if (!empty($projects)) {

	// Find users used by project
	$query = "SELECT `user_id` FROM `members` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query users failed: ".$link->error."\n");
	$users = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$users .= $row[0] . ",";
		//echo "users: {$row[0]}\n";
	}
	$users = substr($users, 0, -1);
	//echo "\n";
	
	// Find wikis by project
	$query = "SELECT `id` FROM `wikis` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query wikis failed: ".$link->error."\n");
	$wikis = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$wikis .= $row[0] . ",";
		//echo "wikis: {$row[0]}\n";
	}
	$wikis = substr($wikis, 0, -1);
	//echo "\n";
	
	// Find issues by project
	$query = "SELECT `id` FROM `issues` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query issues failed: ".$link->error."\n");
	$issues = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$issues .= $row[0] . ",";
		//echo "issues: {$row[0]}\n";
	}
	$issues = substr($issues, 0, -1);
	//echo "\n";
	
	// Find news by project
	$query = "SELECT `id` FROM `news` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query news failed: ".$link->error."\n");
	$news = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$news .= $row[0] . ",";
		//echo "news: {$row[0]}\n";
	}
	$news = substr($news, 0, -1);
	//echo "\n";
	
	// Find repositories by project
	$query = "SELECT `id` FROM `repositories` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query repositories failed: ".$link->error."\n");
	$repositories = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$repositories .= $row[0] . ",";
		//echo "repositories: {$row[0]}\n";
	}
	$repositories = substr($repositories, 0, -1);
	//echo "\n";
	
}

if (!empty($repositories)) {

	// Find changesets by project
	$query = "SELECT `id` FROM `changesets` where `repository_id` IN ($repositories)";
	$result = $link->query($query) or die("Query changesets failed: ".$link->error."\n");
	$changesets = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$changesets .= $row[0] . ",";
		//echo "changesets: {$row[0]}\n";
	}
	$changesets = substr($changesets, 0, -1);
	//echo "\n";
	
}

if (!empty($projects)) {
	
	// Find versions by project
	$query = "SELECT `id` FROM `versions` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query versions failed: ".$link->error."\n");
	$versions = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$versions .= $row[0] . ",";
		//echo "versions: {$row[0]}\n";
	}
	$versions = substr($versions, 0, -1);
	//echo "\n";
	
	// Find attachments
	$query = "SELECT `id` FROM `attachments` where ";
	if (!empty($documents)) $query .= "(`container_type`='Document' AND `container_id` IN ($documents)) OR ";
	if (!empty($wikis))     $query .= "(`container_type`='WikiPage' AND `container_id` IN ($wikis)) OR ";
	if (!empty($versions))  $query .= "(`container_type`='Version' AND `container_id` IN ($versions)) OR ";
	if (!empty($projects))  $query .= "(`container_type`='Project' AND `container_id` IN ($projects)) OR ";
	if (!empty($issues))    $query .= "(`container_type`='Issue' AND `container_id` IN ($issues)) OR ";
	if (!empty($messages))  $query .= "(`container_type`='Message' AND `container_id` IN ($messages)) OR ";
	$query .= "FALSE";
	$result = $link->query($query) or die("Query attachments failed: ".$link->error."\n");
	$attachments = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$attachments .= $row[0] . ",";
		//echo "attachments: {$row[0]}\n";
	}
	$attachments = substr($attachments, 0, -1);
	//echo "\n";
	
	// Find boards by project
	$query = "SELECT `id` FROM `boards` where `project_id` IN ($projects)";
	$result = $link->query($query) or die("Query boards failed: ".$link->error."\n");
	$boards = "";
	while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
		$boards .= $row[0] . ",";
		//echo "boards: {$row[0]}\n";
	}
	$boards = substr($boards, 0, -1);
	//echo "\n";
	
	if (!empty($boards)) {
		
		// Find messages by project
		$query = "SELECT `id` FROM `messages` where `board_id` IN ($boards)";
		$result = $link->query($query) or die("Query messages failed: ".$link->error."\n");
		$messages = "";
		while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
			$messages .= $row[0] . ",";
			//echo "messages: {$row[0]}\n";
		}
		$messages = substr($messages, 0, -1);
		//echo "\n";
		
		
		// Find watchers
		$query = "SELECT `id` FROM `watchers` where ";
		if (!empty($boards))   $query .= "(`watchable_type`='Board' AND `watchable_id` IN ($boards)) OR ";
		if (!empty($messages)) $query .= "(`watchable_type`='Message' AND `watchable_id` IN ($messages)) OR ";
		if (!empty($issues))   $query .= "(`watchable_type`='Issue' AND `watchable_id` IN ($issues)) OR ";
		if (!empty($wikis))    $query .= "(`watchable_type`='WikiPage' AND `watchable_id` IN ($wikis)) OR ";
		if (!empty($news))     $query .= "(`watchable_type`='News' AND `watchable_id` IN ($news)) OR ";
		$query .= "FALSE";
		$result = $link->query($query) or die("Query watchers failed: ".$link->error."\n");
		$watchers = "";
		while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
			$watchers .= $row[0] . ",";
			//echo "watchers: {$row[0]}\n";
		}
		$watchers = substr($watchers, 0, -1);
		//echo "\n";
		
	}
	
}

// Find journals by project
$query = "SELECT `id` FROM `journals` where `user_id` IN ($users)";
$result = $link->query($query) or die("Query journals failed: ".$link->error."\n");
$journals = "";
while ($row = mysqli_fetch_array($result, MYSQL_NUM)) {
	$journals .= $row[0] . ",";
	//echo "journals: {$row[0]}\n";
}
$journals = substr($journals, 0, -1);
//echo "\n";



// Export data into file
//$backupFile = "hostedredmine_user_{$userId}_date_".date("Ymd_Hm").".sql";

//Instantiate the SQL_Export class
require("SQL_Export.php");
$e = new SQL_Export($server, $username, $password, $db);

// Define the database tables
$tables = $e->get_tables();

//Run the export
foreach ($tables as $t) {
	$header = $e->create_header($t);
	$data = "";
	switch ($t) {
		case 'attachments':
			if (!empty($attachments)) $data = $e->get_data($t, "`id` IN ($attachments)");
			break;
		case 'boards':
			if (!empty($boards)) $data = $e->get_data($t, "`id` IN ($boards)");
			break;
		case 'changes':
			if (!empty($changesets)) $data = $e->get_data($t, "`changeset_id` IN ($changesets)");
			break;
		case 'changesets':
			if (!empty($changesets)) $data = $e->get_data($t, "`id` IN ($changesets)");
			break;
		case 'changesets_issues ':
			if (!empty($changesets)) $data = $e->get_data($t, "`changeset_id` IN ($changesets) OR `issue_id` IN ($issues)");
			break;
		case 'comments':
			if (!empty($news)) $data = $e->get_data($t, "`commented_id` IN ($news)");
			break;
		case 'documents':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'enabled_modules':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'gitosis_public_keys':
			$data = $e->get_data($t, "FALSE");
			break;
		case 'issues':
			if (!empty($issues)) $data = $e->get_data($t, "`id` IN ($issues)");
			break;
		case 'issue_categories':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'issue_relations':
			if (!empty($issues)) $data = $e->get_data($t, "`issue_from_id` IN ($issues) OR `issue_to_id` IN ($issues)");
			break;
		case 'journals':
			if (!empty($journals)) $data = $e->get_data($t, "`id` IN ($journals)");
			break;
		case 'journal_details':
			if (!empty($journals)) $data = $e->get_data($t, "`journal_id` IN ($journals)");
			break;
		case 'members':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects) OR `user_id` IN ($users)");
			break;
		case 'member_roles':
			if (!empty($users)) $data = $e->get_data($t, "`member_id` IN ($users)");
			break;
		case 'messages':
			if (!empty($messages)) $data = $e->get_data($t, "`id` IN ($messages)");
			break;
		case 'news':
			if (!empty($news)) $data = $e->get_data($t, "`id` IN ($news)");
			break;
		case 'projects':
			if (!empty($projects)) $data = $e->get_data($t, "`id` IN ($projects)");
			break;
		case 'projects_trackers':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'queries':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'repositories':
			if (!empty($repositories)) $data = $e->get_data($t, "`id` IN ($repositories)");
			break;
		case 'theme_changer_user_settings':
			if (!empty($users)) $data = $e->get_data($t, "`user_id` IN ($users)");
			break;
		case 'time_entries':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects) OR `user_id` IN ($users)");
			break;
		case 'tokens':
			if (!empty($users)) $data = $e->get_data($t, "`user_id` IN ($users)");
			break;
		case 'users':
			if (!empty($users)) $data = $e->get_data($t, "`id` IN ($users)");
			break;
		case 'user_preferences':
			if (!empty($users)) $data = $e->get_data($t, "`user_id` IN ($users)");
			break;
		case 'versions':
			if (!empty($versions)) $data = $e->get_data($t, "`id` IN ($versions)");
			break;
		case 'watchers':
			if (!empty($watchers)) $data = $e->get_data($t, "`id` IN ($watchers)");
			break;
		case 'wikis':
			if (!empty($wikis)) $data = $e->get_data($t, "`id` IN ($wikis)");
			break;
		case 'wiki_contents':
			if (!empty($wikis)) $data = $e->get_data($t, "`page_id` IN ($wikis)");
			break;
		case 'wiki_content_versions':
			if (!empty($wikis)) $data = $e->get_data($t, "`page_id` IN ($wikis)");
			break;
		case 'wiki_pages':
			if (!empty($wikis)) $data = $e->get_data($t, "`wiki_id` IN ($wikis)");
			break;
		case 'wiki_redirects':
			if (!empty($wikis)) $data = $e->get_data($t, "`wiki_id` IN ($wikis)");
			break;
		default:
			$data = $e->get_data($t);
			break;
	}
	echo "\n###################\n# Dumping table `$t`\n###################\n\n$header\n$data\n";
}

// Closing connection
$link->close();

?>