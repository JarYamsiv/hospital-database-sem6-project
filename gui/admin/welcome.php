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
						<form>
							<fieldset>
								<legend><span class="number">1</span> Your Info</legend>
								<input type="text" name="field1" placeholder="Your Name *">
								<input type="email" name="field2" placeholder="Your Email *">
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


								<select id="job" name="field4">

									
									
									<optgroup>
										<?php
										while ( $row = mysqli_fetch_assoc($result)) {
											echo " <option>".$row["Name"]." </option>";
										}  
										?>
										
									</optgroup>
									
								</select>      
							</fieldset>
							
							<input type="submit" value="Apply" />
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
					yeet
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
mysql_close($conn);
?>