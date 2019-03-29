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


	 if ( isset( $_POST['nurse_login'] ) )
	 {
	 	$nurse_name = $_POST['nurse_name'];
	 	// echo "nurse_name :".$nurse_name."<br>";

	 	$nurse_pass = $_POST['nurse_pass'];
	 	// echo "password :".$nurse_pass."<br>";

	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$nurse_name."\" AND password=\"".$nurse_pass."\";";

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