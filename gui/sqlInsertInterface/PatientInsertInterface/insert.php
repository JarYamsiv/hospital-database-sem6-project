 <?php

 	$servername = "localhost";
 	$username = "root";
 	$password = "mynewpassword";
 	$dbname = "hospital";

 	echo "connecting...";
	// Create connection
	 $conn = mysqli_connect($servername, $username, $password,$dbname);

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
	 
	 $query = "INSERT INTO Patient VALUES (".

	 	$pat_id.",".

	 	"\"".$pat_name."\"".",".

	 	$pat_age.",".

	 	"\"".$pat_lastvisit."\"".",".

	 	"\"".$pat_address."\"".",".

	 	"\"".$pat_medhistory."\"".

	 ");" ;

	 echo $query;

	 if(mysqli_query($conn,$query))
	 {
	 	echo "Database created successfully";
	 }
	 else
	 {
	 	echo "Error creating database: " . $conn->error;
	 }

	 mysqli_close($conn);
?> 