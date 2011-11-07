<?php

/***************************************************************
 * SQL_Export class
 * By Adam Globus-Hoenich, 2004 (adam@phenaproxima.net)
 * Use this class as freely as you like. It is 100% free and
 * modifiable :)
***************************************************************/

class SQL_Export
{
	var $cnx;
	var $db;
	var $server;
	var $port;
	var $user;
	var $password;
	var $tables;
	
	function SQL_Export($server, $user, $password, $db)
	{
		$this->db = $db;
		$this->user = $user;
		$this->password = $password;
		
		$sa = explode(":", $server);
		$this->server = $sa[0];
		$this->port = @$sa[1];
		unset($sa);
		
		$this->cnx = mysql_connect($this->server, $this->user, $this->password) or $this->error(mysql_error());
		mysql_select_db($this->db, $this->cnx) or $this->error(mysql_error());

		# Set character_set_results
		mysql_query("SET character_set_results=utf8", $this->cnx);

		# Set character_set_client and character_set_connection
		mysql_query("SET character_set_client=utf8", $this->cnx);
		mysql_query("SET character_set_connection=utf8", $this->cnx);
		
		$this->tables = $this->get_tables();
	}
	
	function get_tables()
	{
		// List the tables in database
		$tables = mysql_query("SHOW TABLES FROM `{$this->db}`", $this->cnx) or $this->error(mysql_error());
		
		//Create a list of tables to be exported
		$table_list = array();
		while($t = mysql_fetch_array($tables)) {
			array_push($table_list, $t[0]);
		}
		return $table_list;
	}
	
	function export_all()
	{
		return $this->export($this->tables);
	}
	
	function export($tables)
	{
		$exported = "";
		foreach($tables as $t)
		{
			$header = $this->create_header($t);
			$data = $this->get_data($t);
			$exported .= "###################\n# Dumping table $t\n###################\n\n$header $data \n";
		}
		
		return($exported);
	}
	
	function create_header($table)
	{
		return(`/usr/local/bin/mysqldump -h {$this->server} -u {$this->user} -p{$this->password} {$this->db} --tables {$table} --no-data`);
	}
	
	function get_data($table, $conditions = "TRUE")
	{
		$d = "";
		$data = mysql_query("SELECT * FROM `{$table}` WHERE {$conditions}", $this->cnx) or $this->error("get_data($table, $conditions): ".mysql_error());
		
		while($cr = mysql_fetch_array($data, MYSQL_NUM))
		{
			$d .= "INSERT INTO `" . $table . "` VALUES (";
			
			for($i=0; $i<sizeof($cr); $i++)
			{
				if(is_null($cr[$i])) {
					$d .= 'NULL,';
				} else {
					$d .= "'".mysql_real_escape_string($cr[$i])."',";
				}
			}
			
			$d = substr($d, 0, strlen($d) - 1);
			$d .= ");\n";
		}
		
		return($d);
	}
	
	function error($err)
	{
		die($err);
	}
}

?> 
