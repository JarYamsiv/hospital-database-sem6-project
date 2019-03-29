<head>
	<meta charset="UTF-8">
	<title>Interactive form</title>
	<link rel="stylesheet" href="../stylesheets/tables_no_highlight/css/style.css">
</head>

<br>
<br>
<center>
	<h1>
		Welcome
		<?php $username =  $_GET['username']  ?>
	</h1>
</center>

<br>
<br>

<center>
	<table class="maintable">

		<thead>
			<tr>
				<th>
					To book doctor
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form action="book.php" method="post">
							<fieldset>
								<legend><span class="number">1</span> Your Info</legend>
								
								<label for="job">User Name:</label>
								<input type="text" name="pat_name" value="<?php echo($username) ?>" readonly>  
								<label for="job">Select Doctor:</label>

								<?php  
								$servername = "localhost";
								$username = "root";
								$password = "mynewpassword";
								$dbname = "hospital";


								$conn = mysqli_connect($servername, $username, $password , $dbname);

								if (!$conn) {
									die("Connection failed: " . mysqli_connect_error());
								}

								$sql = "SELECT Name,Specialization from Doctor";

								$result = mysqli_query($conn, $sql);




								?>


								<select id="job" name="doc_name">

									<optgroup>
										<?php
										while ( $row = mysqli_fetch_assoc($result)) {
											echo " <option>".$row["Name"]." </option>";
										}  
										?>
										
									</optgroup>
									
								</select>  

								<label for="job">Select Appointement Date:</label>
								<input type="date" name="a_date">    
								<textarea rows=3 columns=10 name="desc" placeholder="Description about you"></textarea>
							</fieldset>
							
							<input type="submit" name="book" value="Apply" />
						</form>
					</div>
				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					View Labs
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<?php
						$sql = "SELECT Name,Building,Start_time,Close_time from Labs";
						$result = mysqli_query($conn, $sql); 
					?>
					<center>
					<table>
						<thead>
							<tr>
								<th>Name</th>
								<th>Building</th>
								<th>Start Time</th>
								<th>Close Time</th>
							</tr>
						</thead>
						<tbody>
							<?php
								while ( $row = mysqli_fetch_assoc($result)) {
											echo "<tr>";
											echo "<td>".$row['Name']."</td>";
											echo "<td>".$row['Building']."</td>";
											echo "<td>".$row['Start_time']."</td>";
											echo "<td>".$row['Close_time']."</td>";
											echo "</tr>";
										} 
							?>
						</tbody>
					</table>
					</center>
				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					View Doctors
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<?php 
					$sql = "SELECT Name,Specialization from Doctor";

					$result = mysqli_query($conn, $sql);
					?>

					<center>
						<table>
							<thead>
								<tr>
									<th>Name</th>
									<th>Specialization </th>
								</tr>
							</thead>
							<tbody>
								<?php
								while ( $row = mysqli_fetch_assoc($result)) 
								{
									echo "<tr> <td>".$row["Name"]."</td> <td>".$row["Specialization"]."</td> </tr>";
								}   
								?>
							</tbody>
						</table>
					</center>
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