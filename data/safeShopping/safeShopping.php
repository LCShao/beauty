<?php
header("Content-Type:application/json");
require_once('../init.php');

$sql="SELECT * FROM safeshopping";

$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,1);

echo json_encode($rows);