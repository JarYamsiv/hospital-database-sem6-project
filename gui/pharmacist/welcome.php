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
					Add new Drug
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form action="insertdrug.php" method="post">
								<fieldset>
									<legend><span class="number">1</span> Drug Info</legend>
									<label>Drug ID:</label>
									<input type="text" name="drug_id" placeholder="Drug ID *">

									<label>Drug Name:</label>
									<input type="text" name="insert_drug_name" placeholder="Drug Name *">
									
									<label>Drug Cost:</label>
									<input type="number" name="drug_cost" placeholder="Drug Cost *">
									
									<label>Drug Import Date:</label>
									<input type="date" name="import_date" placeholder="Imported date *">
									
									<label>Drug Expiry Date:</label>
									<input type="date" name="expiry_date" placeholder="Expiry date *">
									
									<label>Drug Quantity:</label>
									<input type="number" name="quantity" placeholder="Quantity added *">



									
								</fieldset>
								
								<input type="submit" name="add" value="Add" />
						</form>
					</div>
				</td>
			</tr>
		</tbody>


		<thead>
			<tr>
				<th>
					View Drug availability
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form action="viewdrug.php" method="post">
								<fieldset>
									<legend><span class="number">1</span> Drug Info</legend>
									<input type="text" name="view_drug_name" placeholder="Drug Name *">									
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
					Remove Drug
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="form_from_table">
						<form action="delete.php" method="post">
								<fieldset>
									<legend><span class="number">1</span> Drug Info</legend>

									<input type="text" name="delete_drug_name" placeholder="Drug Name *">
									<input type="number" name="delete_drug_amt" placeholder="Drug Quantity *">
																
								</fieldset>
								
								<input type="submit" name="remove" value="Delete" />
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