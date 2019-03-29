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


	 if ( isset( $_POST['s_pat_signup'] ) )
	 {
	 	$s_pat_name = $_POST['s_pat_name'];
	 	// echo "pat_name :".$pat_name."<br>";

	 	$s_pat_uname = $_POST['s_pat_uname'];

	 	$s_pat_pass = $_POST['s_pat_pass'];
	 	$s_pat_pass_c = $_POST['s_pat_pass_c'];

	 	// echo "password :".$pat_pass."<br>";

	 }

	 if(strcmp($s_pat_pass, $s_pat_pass_c)!=0)
	 {
	 	echo "passwords doesn't match";
	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$s_pat_uname."\";";


	 $result = mysqli_query($conn, $sql);


	if (mysqli_num_rows($result) > 0) 
	{
		echo "user name alreay exists";
	} 		
	else 
	{
    	$sql = "INSERT INTO users values( \" ".$s_pat_name."\",\"".$s_pat_uname."\",\"".$s_pat_pass."\", \"Patient\");  ";
    	echo $sql;
	}

	 mysqli_close($conn);
?> 