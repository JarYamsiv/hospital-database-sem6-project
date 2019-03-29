<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Pure CSS Table Highlight (vertical & horizontal)</title>
      <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
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

	 echo "<h1>Patient Data</h1><br>";


	 $sql = "SELECT * FROM Patient";
	 $result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) 
	{
    	// output data of each row]
    	echo "
    	<table>

        <thead>
        	<tr>
            	<th>ID</th>
            	<th>Name</th>
            	<th>Age</th>
            	<th>LastVisit</th>
            	<th>Address</th>
            	<th>MedicalHistory</th>
        	</tr>
        </thead>

        <tbody>
    	";
    	while($row = mysqli_fetch_assoc($result)) {
    		echo "<tr>";
    		echo "<td>".$row["ID"]."</td>";
    		echo "<td>".$row["Name"]."</td>";
    		echo "<td>".$row["Age"]."</td>";
    		echo "<td>".$row["Last_visit"]."</td>";
    		echo "<td>".$row["Address"]."</td>";
    		echo "<td>".$row["Medical_history"]."</td>";
        	//echo "id: " . $row["ID"]. " - Name: " . $row["Name"]. " " . $row["Age"]. "<br>";
        	echo "</tr>";
    		}

    	echo "</tbody></table>";
	} 		
	else 
	{
    		echo "0 results";
	}

	 mysqli_close($conn);
?> 
</div>
</body>
</html>