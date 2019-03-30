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

	 if ( isset( $_POST['add_nurse'] ) )
	 {

	 	$nurse_name = $_POST['nurse_name'];
	 	$nurse_uname = $_POST['nurse_uname'];
	 	$nurse_password = $_POST['nurse_password'];

	 	$nurse_specialization = $_POST['nurse_specialization'];
	 	$nurse_salary = $_POST['nurse_salary'];
	 	$nurse_address = $_POST['nurse_address'];
	 }

	 $sql = "SELECT MAX(ID) FROM Nurse";

	 $result = mysqli_query($conn,$sql);

	 if(mysqli_num_rows($result)>0)
	 {
	 	$nurse_id = mysqli_fetch_assoc($result)['MAX(ID)']+1;
	 }
	 else
	 {
	 	$nurse_id = 0;
	 }

	 $sql = "SELECT * from users where username=\"".$nurse_uname."\";";
	 $result = mysqli_query($conn,$sql);

	 if(mysqli_num_rows($result)>0)
	 {
	 	echo "user name already exists";
	 }
	 else
	 {
	 	$sql = "INSERT INTO users values( \"".$nurse_name."\",\"".$nurse_uname."\",\"".$nurse_password."\", \"nurse\");  ";

	 	if(mysqli_query($conn,$sql)>0)
	 	{
	 		echo "p1 done..";

	 		$query = "INSERT INTO Nurse VALUES (".

		 	$nurse_id.",".

		 	"\"".$nurse_name."\"".",".

		 	"\"".$nurse_specialization."\"".",".

		 	$nurse_salary.",".

		 	"\"".$nurse_address."\"".


		 	");" ;

		 	if(mysqli_query($conn,$query)>0)
	 		{
	 			echo "done";
	 		}
	 		else
	 		{
	 			echo "fail".$conn->error;
	 		}

	 	}
	 	else{
	 		echo "fail".$conn->error;
	 	}
	 }
	 
	 

	 // echo $query;

	 // if(mysqli_query($conn,$query))
	 // {
	 // 	echo "Database created successfully";
	 // }
	 // else
	 // {
	 // 	echo "Error creating database: " . $conn->error;
	 // }

	 mysqli_close($conn);
?> 