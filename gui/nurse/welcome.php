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
					View Patients at ward
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
				<div id="form_from_table">
						<form>
							<fieldset>
								<legend><span class="number">1</span> Ward Info</legend>
								<input type="number" name="ward_id" placeholder="Ward ID *">
								
							</fieldset>
							
							<input type="submit" value="View" />
						</form>
					</div>
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