 <?php

 	$servername = "localhost";
 	$username = "root";
 	$password = "mynewpassword";

 	echo "connecting...";
	// Create connection
	 $conn = mysqli_connect($servername, $username, $password);

	// Check connection
	 if (!$conn) {
	 	die("Connection failed: " . mysqli_connect_error());

	 }

	 echo "Connected successfully<br>";

	 if ( isset( $_POST['Submit'] ) )
	 {
	 	$pat_id = $_POST['ID'];
	 	echo "ID :".$pat_id."<br>";

	 	$pat_name = $_POST['Name'];
	 	echo "Name :".$pat_name."<br>";

	 	$pat_age = $_POST['Age'];
	 	echo "Age :".$pat_age."<br>";

	 	$pat_lastvisit = $_POST['LastVisit'];
	 	echo "Last Visit :".$pat_lastvisit."<br>";

	 	$pat_address = $_POST['Address'];
	 	echo "Address :".$pat_address."<br>";

	 	$pat_medhistory = $_POST['MedicalHistory'];
	 	echo "Medical History :".$pat_medhistory."<br>";
	 }
	 

	 mysqli_close($conn);
?> 