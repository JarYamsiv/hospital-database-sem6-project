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


	 if ( isset( $_POST['pat_login'] ) )
	 {
	 	$pat_name = $_POST['pat_name'];
	 	// echo "pat_name :".$pat_name."<br>";

	 	$pat_pass = $_POST['pat_pass'];
	 	// echo "password :".$pat_pass."<br>";

	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$pat_name."\" AND password=\"".$pat_pass."\";";

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