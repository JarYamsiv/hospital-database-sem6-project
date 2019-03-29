<?php

 	$servername = "localhost";
 	$username = "root";
 	$password = "mynewpassword";
 	$dbname = "hospital";

 	//echo "connecting...<br>";
	// Create connection
	 $conn = mysqli_connect($servername, $username, $password , $dbname);

	// Check connection
	 if (!$conn) {
	 	die("Connection failed: " . mysqli_connect_error());

	 }


	 if ( isset( $_POST['book'] ) )
	 {
	 	$pat_name = $_POST['pat_name'];
	 	$a_date = date('Y-m-d', strtotime($_POST['a_date']));
	 	$desc = $_POST['desc'];
	 	$doc_name = $_POST['doc_name'];

	 	// $s_pat_name = $_POST['s_pat_name'];


	 }
	 else
	 {
	 	echo "no";
	 }

	 // echo $pat_name."\n";
	 // echo $a_date."\n";
	 // echo $desc."\n";
	 // echo $doc_name."\n";

	 $patid_q = "SELECT ID from Patient where Name= (select name from users where username=\"".$pat_name."\" );";

	 

	 $result = mysqli_query($conn,$patid_q) or die(mysqli_error());
	 $patID = (mysqli_fetch_assoc($result))['ID'];

	 $docid_q = "SELECT ID FROM Doctor where Name=\"".$doc_name."\";";
	 $result = mysqli_query($conn,$docid_q) or die(mysqli_error());
	 $docID = (mysqli_fetch_assoc($result))['ID'];



	 


	 $sql = "INSERT INTO Pat_attends_doc values (".$docID.",".$patID.",'".$a_date."',"."\"".$desc."\")";


	 if(mysqli_query($conn,$sql)>0)
	 {
	 	echo "sucessful";
	 }
	 else
	 {
	 	echo "fail";
	 }
	
 

	 mysqli_close($conn);
?> 