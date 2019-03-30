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
					Building Details
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form action="view_building.php" method="post">
							<fieldset>
								<legend><span class="number">1</span> Building Info</legend>
								<input type="text" name="detail_building_name" placeholder="Building Name *">
								
							</fieldset>
							
							<input type="submit" name="view" value="View" />
						</form>
					</div>
				</td>
			</tr>
		</tbody>

		<thead>
			<tr>
				<th>
					Assign Nurse to a ward
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form action="insert_nurse.php" method="post">
							<fieldset>
								<legend><span class="number">1</span> Nurse Info</legend>
								<label> Credentials :</label>
								<input type="text" name="nurse_name" placeholder="Nurse Name *">
								<input type="text" name="nurse_uname" placeholder="Nurse User Name *">
								<input type="password" name="nurse_password" placeholder="Nurse password *">
								<br>
								<label> Additional Info :</label>
								<input type="text" name="nurse_specialization" placeholder="Specialization *">
								<input type="number" name="nurse_salary" placeholder="Salary *">
								<input type="text" name="nurse_address" placeholder="Address *">
								
							</fieldset>
							
							<input type="submit" name="add_nurse" value="Assign" />
						</form>
					</div>
				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					Assign Security
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form>
							<fieldset>
								<legend><span class="number">1</span> Security Info</legend>

								<input type="number" name="security_id" placeholder="Security ID *">
								<input type="text" name="security_name" placeholder="Security Name *">
								<input type="text" name="security_shift" placeholder="Shift *">
								<input type="number" name="security_salary" placeholder="Salary *">
								<input type="text" name="security_address" placeholder="Address *">
								
							</fieldset>
							
							<input type="submit" value="Assign" />
						</form>
					</div>
				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					View Operating Theatre & doctor governing them
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