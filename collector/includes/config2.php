<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','otdms');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}


// DB credentials.
define('DB_HOST2','localhost');
define('DB_USER2','root');
define('DB_PASS2','');
define('DB_NAME2','bbdms');
// Establish database connection.
try
{
$dbh2 = new PDO("mysql:host=".DB_HOST2.";dbname=".DB_NAME2,DB_USER2, DB_PASS2,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>