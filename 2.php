<?php
$connect=mysqli_connect("localhost", "root", "", "csi")or die("couldn't find server");

if(isset($_POST['search'])){
$dept=$_POST["dept"];


$yr=$_POST["yr"];


$name=$_POST["fname"];

if($dept!="no")
{
	if($yr!="no")
	{
		if($name!="")
		{
			$sql = "SELECT * FROM csireg WHERE dept=".$dept." && year=".$yr." && fname=".$name."";
			$result = $connect->query($sql);
		}
		else
		{
			$sql = "SELECT * FROM csireg WHERE dept=".$dept." && year=".$yr."";
			$result = $connect->query($sql);
		}
	}
	else
	{
		$sql = "SELECT * FROM csireg WHERE dept=".$dept." && fname=".$name."";
		$result = $connect->query($sql);
	}
}
else
{
	if($yr!="no")
	{
		if($name!="")
		{
			$sql = "SELECT * FROM csireg WHERE year=".$yr." && fname=".$name."";
			$result = $connect->query($sql);
		}
		else
		{
			$sql = "SELECT * FROM csireg WHERE year=".$yr."";
			$result = $connect->query($sql);
		}
	}
	else
	{
		$sql = "SELECT * FROM csireg WHERE fname=".$name."";
		$result = $connect->query($sql);
	}
}
}
?>

<!DOCTYPE html>
<html>
<head>

<style>

input[id=fname] {
    width: 430px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('index.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

select,button,input{
    padding: 5px 8px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
}
button:hover {
    background-color:#1E90FF;
}

</style>
<style>
table {
    display: table;
    border-collapse: collapse;
    border-spacing: 0px;
    border-color: black;
    width: 100%;
}

th {
    text-align: center;
    text-padding:10px;
background-color:#1E90FF ;
    color: white;
}

td{
	text-align:center;
}
legend{
color:#1E90FF;
}

ul#m01 {
    list-style-type: none;
    margin: 1;
    padding: 1;
    overflow: hidden;
    background-color:#1E90FF;
}

li#m01 {
    float: left;
}

li#m01 a {
    display: block ;
    color: white;
    text-align: center;
    padding: 10px;
	text-decoration:none;
}

li#m01 a:hover {
    background-color: #191970;
    text-decoration:underline;
}

li#m01 a.active {
    background-color:blue;
}
</style>

</head>
<body>
<center style="background-color:#87CEEB;">
<table>
<tr>
<td><img src="dbit.png" alt="DBIT LOGO" style="width: 75px;height: 75px;"></td>
<td><font size="6">DON BOSCO INSTITUTE OF TECHNOLOGY</font><br>
	<center><font size="4">Computer Society India</font></center></td>
<td><img src="csi-logo.png" alt="CSI LOGO" style="width: 75px;height: 75px;"></td>
</tr>
</table>
</center>
<hr>
<center><h2>Records</h2></center>

<ul id="m01">
  <li id="m01"><a href="#home">Home</a></li>
  <li id="m01"><a href="1.html">Register</a></li>
  <li id="m01"><a href="#contact">Contact Us</a></li>
  <li id="m01"><a href="#about">About Us</a></li>
  <li id="m01"><a class="active" href="2.php">Search</a></li>
    <li id="m01"><a href="3.html">Approve</a></li>
</ul>

<form name="csiform" action="2.php" method="post">
	<fieldset>
		<legend>Personal Information</legend>
	<h4>Search by:</h4>
	<br>Department: <select name="dept">
			<option value="no">Select Department</option>
			<option value="IT">Information Technology</option>
			<option value="COMPS">Computer Engineering</option>
			<option value="EXTC">Electronics and Telecommunications</option>
			<option value="MECH">Mechanical Engineering</option>
		</select>
		Year: <select name="yr">
			<option value="no">Select Year</option>
			<option value="FE">First</option>
			<option value="SE">Second</option>
			<option value="TE">Third</option>
			<option value="BE">Fourth</option>
		</select>
		Name: <input type="text" id="fname" name="fname">
		<button type="submit" name="search">Search
	</fieldset>
<br>
<fieldset>
<legend>List of students</legend>
<br>
<table border=1	 align="center">
<tr>
	<th>Sr no</th>
	<th>Student ID</th>
	<th>Name</th>
	<th>Department</th>
	<th>Year</th>
<tr>

<?php

if(($result->num_rows)>0){
	$i=0;
	while($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
//while($row = $result->fetch_assoc()) {
	
echo "<tr>
	<td>".$i."</td>
	<td>".$row["sid"]."</td>
	<td>".$row["fname"]." ". $row["mname"]." ".$row["lname"]."</td>
	<td>".$row["dept"]."</td>
	<td>".$row["year"]."</td>
</tr>";
$i++;
}
else
{
echo "0 results";
}


?>
</table>
<?php
}
?>

</form>
</body>
</html>
  
