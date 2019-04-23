<?php
	$connect = new mysqli("localhost", "root", "1998", "student");
	if($connect->connect_error){
		die("Database connectivity Error!<br>");
	}
	echo "Connected to database successfully <br>";
	$name = $_POST["name"];
	$rollno = $_POST["rollno"];
	echo "Name : $name Roll Number : $rollno<br>";
	
	if(preg_match("/^[a-z| ]+$/i", $name))
		echo "Name is valid<br>";
	else
		die("Name is invalid <br>");
	
	if(preg_match("/\d+$/", $rollno))
		echo "Roll number is valid<br>";
	else
		die("Roll number is invalid <br>");
	
	if(isset($_POST["submit"])){
		echo "Submit clicked<br>";
		$connect->query("insert into details values('$name', '$rollno');");
		echo "Inserted successfully<br>";
	}
	else if(isset($_POST["display"])){
		echo "Display clicked<br>";
		$rows = $connect->query("select * from details");
		if($rows->num_rows > 0){
			echo "<table border='1'>";
			echo "<tr>";
			echo "<th>Name</th>";
			echo "<th>Roll No</th>";
			echo "</tr>";
			echo "</table";
			while($row = $rows->fetch_assoc()){
				echo "<tr>";
				echo "<td>".$row['name']."</td>";
				echo "<td>".$row['rollno']."</td>";
				echo "</tr>";
			}
		}else
			echo "Database is empty<br>";
	}
?>