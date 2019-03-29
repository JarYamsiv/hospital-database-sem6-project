<head>
	<meta charset="UTF-8">
	<title>Interactive form</title>
	<link rel="stylesheet" href="../stylesheets/tables_no_highlight/css/style.css">
</head>

<h1>
	Hi welcome friend
</h1>

<center>
	<table>

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

									$query = "SELECT Name,Specialization from Doctor GROUP BY Specialization";

									$result = mysqli_query($conn, $sql);

									if($result>0)
									{
										echo"successfull";
									}
									else
									{
										echo "failed".$conn->error;
									}
								?>


								<select id="job" name="field4">
									
									<optgroup label="Indoors">
										<option value="fishkeeping">Fishkeeping</option>
										<option value="reading">Reading</option>
										<option value="boxing">Boxing</option>
										<option value="debate">Debate</option>
										<option value="gaming">Gaming</option>
										<option value="snooker">Snooker</option>
										<option value="other_indoor">Other</option>
									</optgroup>
									<optgroup label="Outdoors">
										<option value="football">Football</option>
										<option value="swimming">Swimming</option>
										<option value="fishing">Fishing</option>
										<option value="climbing">Climbing</option>
										<option value="cycling">Cycling</option>
										<option value="other_outdoor">Other</option>
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
					yeet
				</td>
			</tr>
		</tbody>

	</table>
</center>