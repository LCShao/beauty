<?php

header("Content-type:application/json");
require_once("../init.php");

$sql="select * from products";
$result = mysqli_query($conn,$sql);
$rows= mysqli_fetch_all($result,1);
echo json_encode($rows);