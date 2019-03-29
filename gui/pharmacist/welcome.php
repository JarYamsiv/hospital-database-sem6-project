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
						<form>
								<fieldset>
									<legend><span class="number">1</span> Drug Info</legend>
									<input type="text" name="drug_id" placeholder="Drug ID *">
									<input type="text" name="insert_drug_name" placeholder="Drug Name *">
									<input type="text" name="drug_cost" placeholder="Drug Cost *">
									<input type="date" name="import_date" placeholder="Imported date *">
									<input type="date" name="expiry_date" placeholder="Expiry date *">
									<input type="number" name="quantity" placeholder="Quantity added *">



									
								</fieldset>
								
								<input type="submit" value="Add" />
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
						<form>
								<fieldset>
									<legend><span class="number">1</span> Drug Info</legend>
									<input type="text" name="view_drug_name" placeholder="Drug Name *">									
								</fieldset>
								
								<input type="submit" value="View" />
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
						<form>
								<fieldset>
									<legend><span class="number">1</span> Drug Info</legend>
									<input type="text" name="delete_drug_name" placeholder="Drug Name *">
																
								</fieldset>
								
								<input type="submit" value="Delete" />
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