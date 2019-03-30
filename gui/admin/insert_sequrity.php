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

	 if ( isset( $_POST['add_security'] ) )
	 {

	 	$security_id = $_POST['security_id'];
	 	$security_name = $_POST['security_name'];
	 	$security_shift = $_POST['security_shift'];
	 	$security_salary = $_POST['security_salary'];
	 	$security_address = $_POST['security_address'];
	 }

	 
	 $query = "INSERT INTO Security VALUES (".

		 	$security_id.",".

		 	"\"".$security_name."\"".",".

		 	"\"".$security_shift."\"".",".

		 	$security_salary.",".

		 	"\"".$security_address."\"".


		 	");" ;
	 
	 

	 // echo $query;

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