<html>
<head>
	<title>Register Now</title>
	<style>
		form{
			margin : 100px auto;
			width : 400px;
			font-family:Arial;
			font-size:20px;
		}
		
		input{
			padding: 3px 10px;
			margin-left:10px;
			font-size:15px;
			color:#0a0a0a;
		}
		
		.heading{
			padding : 10px;
			font-size:25px;
			font-family: Arial, sans-serif;
		}
		
		.heading{
			text-align:center;
		}
		
		.submitRow{
			padding: 10px 0;
			width:100px;
		}
		
	</style>
</head>
<body>
	<form action="process.php" method="post">
		<table>
			<tr>
				<td class="heading" colspan="2">Registration Form</td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" placeholder="Enter full name"/></td>
			</tr>
			<tr>
				<td>Roll Number</td>
				<td><input type="text" name="rollno" placeholder="Enter roll number"/></td>
			</tr>
			<tr>
				<td class="displayRow">
					<input type="submit" name="display" value="Display"/>
				</td>
				<td class="submitRow">
					<input type="submit" name="submit" value="Submit"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>