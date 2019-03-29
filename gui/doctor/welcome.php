<head>
	<meta charset="UTF-8">
	<title>Interactive form</title>
	<link rel="stylesheet" href="../stylesheets/tables_no_highlight/css/style.css">
</head>

<?php  
$servername = "localhost";
$username = "root";
$password = "mynewpassword";
$dbname = "hospital";


$conn = mysqli_connect($servername, $username, $password , $dbname);

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$username = $_GET['docname'];

?>

<br>
<br>
<center>
	<h1>
		Welcome
	</h1>
</center>

<br>
<br>

<center>
	<table class="maintable">

		<thead>
			<tr>
				<th>
					View appointments
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<?php

					$sql = "SELECT ID from Doctor where Name in (select name from users where username like \"".$username."\");";

					$result = mysqli_query($conn, $sql);


					$docID = (mysqli_fetch_assoc($result))['ID'];



					$sql = "SELECT Patient_ID,a_date,description from Pat_attends_doc where Doctor_ID= \"".$docID."\";";

					$result = mysqli_query($conn, $sql);


					?>

					<?php
						if(mysqli_num_rows($result)>0)
						{
					 ?>
					<center>
					<table>
						<thead>
							<tr>
								<th>pat Id</th>
								<th>appointment date</th>
								<th>description</th>
							</tr>						
						</thead>
						<tbody>
							<?php
										while ( $row = mysqli_fetch_assoc($result)) {
											$patid = $row['Patient_ID'];
											$sql = "SELECT Name from Patient where ID=".$patid.";";
											$result = mysqli_query($conn, $sql);
											$patname = (mysqli_fetch_assoc($result))['Name'];

											echo "<tr>";
												echo "<td>".$patname."</td>";
												echo "<td>".$row['a_date']."</td>";
												echo "<td>".$row['description']."</td>";
											echo "</tr>";
										}  
							?>
						</tbody>
						
					</table>
					</center>
					<?php
						}
						else{
							echo "<center>no appointments</center>";
						}
					?>

				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					View Patients
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					yeet
				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					View Nurses at wards
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					yeet
				</td>
			</tr>
		</tbody>

	</table>
</center>

<br>
<br>
<br>
<br>

<?php
mysqli_close($conn);
?>