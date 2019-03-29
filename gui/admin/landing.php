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


	 if ( isset( $_POST['admin_login'] ) )
	 {
	 	$admin_name = $_POST['admin_name'];
	 	// echo "admin_name :".$admin_name."<br>";

	 	$admin_pass = $_POST['admin_pass'];
	 	// echo "password :".$admin_pass."<br>";

	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$admin_name."\" AND password=\"".$admin_pass."\";";

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