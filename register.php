<?php
$connect=mysqli_connect("localhost", "root", "", "csi")or die("couldn't find server");

$fn=$_POST["fname"];
$mn=$_POST["mname"];
$ln=$_POST["lname"];
$dob=$_POST["dob"];
$gen=$_POST["gen"];
$contact=$_POST["num"];
$em=$_POST["em"];
$addr=$_POST["addr"];
$city=$_POST["ct"];
$dept=$_POST["dept"];
$yr=$_POST["yr"];
$id=$_POST["id"];
$skl=$_POST["skl"];
$additional=$_POST["addt"];
$amt=$_POST["amt"];

$write=mysqli_query($connect,"INSERT INTO csireg values('','$fn','$mn','$ln','$dob','$gen','$contact','$em','$addr','$city','$dept','$yr','$id','$skl','$additional','$amt')")or die("error cannot write data into database");

?>


