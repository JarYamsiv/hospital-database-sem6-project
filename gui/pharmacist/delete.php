
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

     if ( isset( $_POST['remove'] ) )
     {
        $drug_name = $_POST['delete_drug_name'];
        $drug_remove_quantity = $_POST['delete_drug_amt'];
     }

     $sql = "SELECT Quantity_available FROM Drug where Name=\"".$drug_name."\";";
     $result = mysqli_query($conn, $sql);

     if(mysqli_num_rows($result) > 0)
     {
        $current_q = (mysqli_fetch_assoc($result))['Quantity_available'];
        if(($current_q - $drug_remove_quantity)<0)
        {
            echo "Insufficient drugs";
        }
        else{
            $new_quantity = $current_q - $drug_remove_quantity;
            $sql = "UPDATE Drug set Quantity_available =".$new_quantity." where Name=\"".$drug_name."\";";
            mysqli_query($conn,$sql);
            echo "removed";
        }
        
     }
     else{
        echo "No drug found";
     }



	 

	

	 mysqli_close($conn);
?> 
