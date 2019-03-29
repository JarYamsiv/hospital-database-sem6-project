<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>drug data</title>
      <link rel="stylesheet" href="../stylesheets/tables/css/style.css">
</head>
<body>

<div class="container">
    <h1>Patient Data</h1><br>
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

	 echo "";

     if ( isset( $_POST['view'] ) )
     {
        $ward_id = $_POST['ward_id'];
     }

     $sql = "SELECT Patient_ID FROM Pat_admit_ward where Ward_ID=\"".$ward_id."\";";
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


        	</tr>
        </thead>

        <tbody>
    	";
    	while($row = mysqli_fetch_assoc($result)) {
    		echo "<tr>";
    		echo "<td>".$row["Patient_ID"]."</td>";

            $sql = "SELECT Name,Age from Patient where ID=".$row['Patient_ID'].";";
            $result1 = mysqli_query($conn,$sql);
            $name = mysqli_fetch_assoc($result1)['Name'];
            $result1 = mysqli_query($conn,$sql);
            $age  = mysqli_fetch_assoc($result1)['Age'];

            echo "<td>".$name."</td>";
            echo "<td>".$age."</td>";

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