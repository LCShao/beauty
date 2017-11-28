<?php
header("Content-Type:application/json");
require_once("../init.php");
@$dairy_id=$_REQUEST["dairy_id"];
$sql="select * from dairy_info where dairy_id=$dairy_id";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1)[0]);