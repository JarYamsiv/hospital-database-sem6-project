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

	 	$pat_specialization = $_POST['Specialization'];
	 	echo "Specialization :".$pat_specialization."<br>";

	 	$pat_salary = $_POST['Salary'];
	 	echo "Salary :".$pat_salary."<br>";
	 	
	 	$pat_address = $_POST['Address'];
	 	echo "Address :".$pat_address."<br>";
	 }
	 

	 mysqli_close($conn);
?> 
