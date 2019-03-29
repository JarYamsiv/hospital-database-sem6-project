<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>drug data</title>
      <link rel="stylesheet" href="../stylesheets/tables/css/style.css">
</head>
<body>

<div class="container">
    <h1>Drug Data</h1><br>
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
        $drug_name = $_POST['view_drug_name'];
     }

     $sql = "SELECT * FROM Drug where Name=\"".$drug_name."\";";
     $result = mysqli_query($conn, $sql);

     if(mysqli_num_rows($result) > 0)
     {
        
     }
     else{
        $sql = "SELECT * FROM Drug";
        $result = mysqli_query($conn, $sql);
     }



	 

	if (mysqli_num_rows($result) > 0) 
	{
    	// output data of each row]
    	echo "
    	<table>

        <thead>
        	<tr>
            	<th>ID</th>
            	<th>Name</th>
            	<th>Cost</th>
            	<th>Import</th>
            	<th>Expiry</th>
            	<th>Quantity</th>
        	</tr>
        </thead>

        <tbody>
    	";
    	while($row = mysqli_fetch_assoc($result)) {
    		echo "<tr>";
    		echo "<td>".$row["ID"]."</td>";
    		echo "<td>".$row["Name"]."</td>";
    		echo "<td>".$row["Cost"]."</td>";
    		echo "<td>".$row["Imported_date"]."</td>";
    		echo "<td>".$row["Expiry_date"]."</td>";
    		echo "<td>".$row["Quantity_available"]."</td>";
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