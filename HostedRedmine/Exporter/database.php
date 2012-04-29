<?php

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

require("sql.inc.php");
require_once("sql_export.inc.php");


// No HTML headers for CLI
/*
if (PHP_SAPI !== 'cli') {
	header("Content-Type: text/sql");
	header("Content-Disposition:attachment;filename=database_{$userId}.sql");
}
*/


/*
// Find relevant user
$query = "SELECT * FROM `users` where `id`='$userId'";
$result = mysql_query($query) or die("Query failed: ".mysql_error()."\n");

// Printing results
while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	foreach ($row as $key=>$val) {
		echo "$key => $val\n";
	}
	echo "\n\n";
}
*/


// Find projects used by user
$query = "SELECT `project_id` FROM `members` where `user_id`='$userId'";
$result = mysql_query($query) or die("Query members failed: ".mysql_error()."\n");
$projects = "";
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$projects .= $row[0] . ",";
	//echo "projects: {$row[0]}\n";
}
$projects = substr($projects, 0, -1);

if (!empty($projects)) {
	
	// Find wikis by project
	$query = "SELECT `id` FROM `wikis` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query wikis failed: ".mysql_error()."\n");
	$wikis = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$wikis .= $row[0] . ",";
		//echo "wikis: {$row[0]}\n";
	}
	$wikis = substr($wikis, 0, -1);
	
	// Find issues by project
	$query = "SELECT `id` FROM `issues` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query issues failed: ".mysql_error()."\n");
	$issues = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$issues .= $row[0] . ",";
		//echo "issues: {$row[0]}\n";
	}
	$issues = substr($issues, 0, -1);
	
	// Find news by project
	$query = "SELECT `id` FROM `news` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query news failed: ".mysql_error()."\n");
	$news = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$news .= $row[0] . ",";
		//echo "news: {$row[0]}\n";
	}
	$news = substr($news, 0, -1);
	
	// Find repositories by project
	$query = "SELECT `id` FROM `repositories` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query repositories failed: ".mysql_error()."\n");
	$repositories = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$repositories .= $row[0] . ",";
		//echo "repositories: {$row[0]}\n";
	}
	$repositories = substr($repositories, 0, -1);
	
}

if (!empty($repositories)) {

	// Find changesets by project
	$query = "SELECT `id` FROM `changesets` where `repository_id` IN ($repositories)";
	$result = mysql_query($query) or die("Query changesets failed: ".mysql_error()."\n");
	$changesets = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$changesets .= $row[0] . ",";
		//echo "changesets: {$row[0]}\n";
	}
	$changesets = substr($changesets, 0, -1);
	
}

if (!empty($projects)) {
	
	// Find versions by project
	$query = "SELECT `id` FROM `versions` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query versions failed: ".mysql_error()."\n");
	$versions = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$versions .= $row[0] . ",";
		//echo "versions: {$row[0]}\n";
	}
	$versions = substr($versions, 0, -1);
	
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
		
		// Find watchers
		$query = "SELECT `id` FROM `watchers` where ";
		if (!empty($boards))   $query .= "(`watchable_type`='Board' AND `watchable_id` IN ($boards)) OR ";
		if (!empty($messages)) $query .= "(`watchable_type`='Message' AND `watchable_id` IN ($messages)) OR ";
		if (!empty($issues))   $query .= "(`watchable_type`='Issue' AND `watchable_id` IN ($issues)) OR ";
		if (!empty($wikis))    $query .= "(`watchable_type`='WikiPage' AND `watchable_id` IN ($wikis)) OR ";
		if (!empty($news))     $query .= "(`watchable_type`='News' AND `watchable_id` IN ($news)) OR ";
		$query .= "FALSE";
		$result = mysql_query($query) or die("Query watchers failed: ".mysql_error()."\n");
		$watchers = "";
		while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
			$watchers .= $row[0] . ",";
			//echo "watchers: {$row[0]}\n";
		}
		$watchers = substr($watchers, 0, -1);
		
	}
	
	// Find documents by project
	$query = "SELECT `id` FROM `documents` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query documents failed: ".mysql_error()."\n");
	$documents = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$documents .= $row[0] . ",";
		//echo "documents: {$row[0]}\n";
	}
	$documents = substr($documents, 0, -1);
	
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
	
	// Find members used by project
	// Find users used by project
	$query = "SELECT `id`, `user_id` FROM `members` where `project_id` IN ($projects)";
	$result = mysql_query($query) or die("Query members failed: ".mysql_error()."\n");
	$members = "";
	$users = "2,"; // We need the Anonymous user
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$members .= $row[0] . ",";
		$users .= $row[1] . ",";
		//echo "members: {$row[0]}\n";
		//echo "users: {$row[1]}\n";
	}
	$members = substr($members, 0, -1);
	$users = substr($users, 0, -1);

	// Find journals
	// Add contributing users that are not members
	$query = "SELECT `id`, `user_id` FROM `journals` where ";
	if (!empty($issues)) $query .= "(`journalized_type`='Issue' AND `journalized_id` IN ($issues)) OR ";
	$query .= "FALSE";
	$result = mysql_query($query) or die("Query journals failed: ".mysql_error()."\n");
	$journals = "";
	//$users is already initalised
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$journals .= $row[0] . ",";
		//$users .= $row[1] . ",";
		//echo "journals: {$row[0]}\n";
		//echo "users: {$row[1]}\n";
	}
	$journals = substr($journals, 0, -1);
	//if (substr($users,-1)==',') $users = substr($users, 0, -1);
	
	// Find custom_values
	$query = "SELECT `id` FROM `custom_values` where ";
	if (!empty($issues))   $query .= "(`customized_type`='Issue'     AND `customized_id` IN ($issues)) OR ";
	if (!empty($users))    $query .= "(`customized_type`='Principal' AND `customized_id` IN ($users)) OR ";
	if (!empty($projects)) $query .= "(`customized_type`='Project'   AND `customized_id` IN ($projects)) OR ";
	$query .= "FALSE";
	$result = mysql_query($query) or die("Query custom_values failed: ".mysql_error()."\n");
	$custom_values = "";
	while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
		$custom_values .= $row[0] . ",";
		//echo "custom_values: {$row[0]}\n";
	}
	$custom_values = substr($custom_values, 0, -1);
	
}


//Instantiate the SQL_Export class
$e = new SQL_Export($server, $username, $password, $db);

// Define the database tables
$tables = $e->get_tables();

// Open the output file
$database_file = "database_{$userId}.sql";
$fp = fopen($database_file, 'w');
# Now UTF-8 - Add byte order mark
fwrite($fp, pack("CCC",0xef,0xbb,0xbf));

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
		case 'changesets_issues':
			if (!empty($changesets) and !empty($issues)) $data = $e->get_data($t, "`changeset_id` IN ($changesets) OR `issue_id` IN ($issues)");
			break;
		case 'chart_done_ratios': # Plugin
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'chart_issue_statuses': # Plugin
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'chart_saved_conditions': # Plugin
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'chart_time_entries': # Plugin
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'comments':
			if (!empty($news)) $data = $e->get_data($t, "`commented_id` IN ($news)");
			break;
		case 'custom_fields_projects':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'custom_values':
			if (!empty($custom_values)) $data = $e->get_data($t, "`id` IN ($custom_values)");
			break;
		case 'documents':
			if (!empty($documents)) $data = $e->get_data($t, "`id` IN ($documents)");
			break;
		case 'enabled_modules':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'enumerations':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects) OR `project_id` IS NULL");
			break;
		case 'gitosis_public_keys': # Plugin
			$data = $e->get_data($t, "FALSE");
			break;
		case 'groups_users':
			if (!empty($users)) $data = $e->get_data($t, "`user_id` IN ($users)");
			break;
		case 'issues':
			if (!empty($issues)) $data = $e->get_data($t, "`id` IN ($issues)");
			break;
		case 'issue_categories':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
			break;
		case 'issue_checklists': # Plugin
			if (!empty($issues)) $data = $e->get_data($t, "`id` IN ($issues)");
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
			if (!empty($members)) $data = $e->get_data($t, "`id` IN ($members)");
			break;
		case 'member_roles':
			if (!empty($members)) $data = $e->get_data($t, "`member_id` IN ($members)");
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
		case 'theme_changer_user_settings': # Plugin
			if (!empty($users)) $data = $e->get_data($t, "`user_id` IN ($users)");
			break;
		case 'time_entries':
			if (!empty($projects)) $data = $e->get_data($t, "`project_id` IN ($projects)");
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
	fwrite($fp, "\n###################\n# Dumping table `$t`\n###################\n\n$header\n$data\n");
}
fclose($fp);

?>
