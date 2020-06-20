<?php 
// DB credentials.
define('DB_HOST2','localhost');
define('DB_USER2','root');
define('DB_PASS2','');
define('DB_NAME2','bbdms');
// Establish database connection.
try
{
$dbh2 = new PDO("mysql:host2=".DB_HOST.";dbname2=".DB_NAME2,DB_USER2, DB_PASS2,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>