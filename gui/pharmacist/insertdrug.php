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

	 if ( isset( $_POST['add'] ) )
	 {
	 	$drug_id = $_POST['drug_id'];
	 	$drug_name = $_POST['insert_drug_name'];
	 	$drug_cost = $_POST['drug_cost'];
	 	$drug_import = $_POST['import_date'];
	 	$drug_expiry = $_POST['expiry_date'];
	 	$drug_quantity = $_POST['quantity'];
	 }
	 
	 $query = "INSERT INTO Drug VALUES (".

	 	$drug_id.",".

	 	"\"".$drug_name."\"".",".

	 	$drug_cost.",".

	 	"\"".$drug_import."\"".",".

	 	"\"".$drug_expiry."\"".",".

	 	$drug_quantity.

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