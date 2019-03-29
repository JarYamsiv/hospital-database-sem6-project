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


	 if ( isset( $_POST['s_pat_signup'] ) )
	 {
	 	$s_pat_name = $_POST['s_pat_name'];
	 	// echo "pat_name :".$pat_name."<br>";

	 	$s_pat_uname = $_POST['s_pat_uname'];

	 	$s_pat_pass = $_POST['s_pat_pass'];
	 	$s_pat_pass_c = $_POST['s_pat_pass_c'];

	 	$s_pat_age = $_POST['s_pat_age'];
	 	$s_pat_addr = $_POST['s_pat_addr'];

	 	// echo "password :".$pat_pass."<br>";

	 }

	 if(strcmp($s_pat_pass, $s_pat_pass_c)!=0)
	 {
	 	echo "passwords doesn't match";
	 }


	 $sql = "SELECT * FROM users WHERE username=\"".$s_pat_uname."\";";


	 $result = mysqli_query($conn, $sql);


	if (mysqli_num_rows($result) > 0) 
	{
		echo "user name alreay exists";
	} 		
	else 
	{
    	$sql = "INSERT INTO users values( \" ".$s_pat_name."\",\"".$s_pat_uname."\",\"".$s_pat_pass."\", \"patient\");  ";
    	// echo $sql;
    	if(mysqli_query($conn,$sql)>0)
    	{
    		echo "successfully inserted";
    	}
    	else
    	{
    		echo "insertion failed";
    	}

    	$sql = "SELECT max(ID) from Patient";
    	$result = mysqli_query($conn, $sql);

    	if (mysqli_num_rows($result) == 0)
    	{
    		$new_id = 0;
    	} 

    	while ( $row = mysqli_fetch_assoc($result)) 
		{
			$new_id = $row["max(ID)"]+1;
		} 

    	$sql = "INSERT INTO Patient VALUES (".

	 	$new_id.",".

	 	"\"".$s_pat_name."\"".",".

	 	$s_pat_age.",".

	 	"\"\"".",".

	 	"\"".$s_pat_addr."\"".",".

	 	"\"\"".

	 	");" ;

	 	if(mysqli_query($conn,$sql)>0)
    	{
    		echo " .. done";
    	}
    	else
    	{
    		echo ".. oops failed inbetween";
    	}
	}

	 mysqli_close($conn);
?> 