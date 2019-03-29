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


	 if ( isset( $_POST['doc_login'] ) )
	 {
	 	$doc_name = $_POST['doc_name'];
	 	// echo "doc_name :".$doc_name."<br>";

	 	$doc_pass = $_POST['doc_pass'];
	 	// echo "password :".$doc_pass."<br>";

	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$doc_name."\" AND password=\"".$doc_pass."\";";

	 // if(mysqli_query($conn,$sql)){
	 // 	echo $sql."\nno error\n";
	 // }
	 // else
	 // {
	 // 	echo "error".$conn->error;
	 // }
	 $result = mysqli_query($conn, $sql);


	if (mysqli_num_rows($result) > 0) 
	{
		header("location: welcome.php");
	} 		
	else 
	{
    		echo "invalid crenetials";
	}

	 mysqli_close($conn);
?> 