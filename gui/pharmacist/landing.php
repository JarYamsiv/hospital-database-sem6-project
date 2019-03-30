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


	 if ( isset( $_POST['pharmacist_login'] ) )
	 {
	 	$pharmacist_name = $_POST['pharmacist_name'];
	 	// echo "pharmacist_name :".$pharmacist_name."<br>";

	 	$pharmacist_pass = $_POST['pharmacist_pass'];
	 	// echo "password :".$pharmacist_pass."<br>";

	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$pharmacist_name."\" AND password=\"".$pharmacist_pass."\";";

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
		$prof = mysqli_fetch_assoc($result)['profession'];
		if(strcmp($prof, "pharmacist")==0 || strcmp($prof, "Admin")==0)
		{
			header("location: welcome.php");
		}
		else
		{
			echo "Invalid credentials";
		}
	} 		
	else 
	{
    		echo "invalid crenetials";
	}

	 mysqli_close($conn);
?> 