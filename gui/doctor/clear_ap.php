<?php

$servername = "localhost";
$username = "root";
$password = "mynewpassword";
$dbname = "hospital";


$conn = mysqli_connect($servername, $username, $password , $dbname);

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

if(isset($_POST['clear']))
{
	$doc_uname = $_POST['doc_uname'];
}

$sql = "SELECT ID from Doctor where Name in (select name from users where username like \"".$doc_uname."\");";



$result = mysqli_query($conn, $sql);


$docID = (mysqli_fetch_assoc($result))['ID'];




$sql = "DELETE from Pat_attends_doc where Doctor_ID= \"".$docID."\";";

if(mysqli_query($conn,$sql))
{
	echo "succes";
}
else
{
	echo "failed".$conn->error;
}



?>