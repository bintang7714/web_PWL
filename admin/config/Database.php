<?php
session_start();
class Database{
	
	private $host  = 'sql202.epizy.com';
    private $user  = 'epiz_29149753';
    private $password   = "QoyOusWBuZf";
    private $database  = "epiz_29149753_dbcms"; 
    
    public function getConnection(){		
		$conn = new mysqli($this->host, $this->user, $this->password, $this->database);
		if($conn->connect_error){
			die("Error failed to connect to MySQL: " . $conn->connect_error);
		} else {
			return $conn;
		}
    }
}
?>