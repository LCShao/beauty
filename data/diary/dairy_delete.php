<?php
 header("Content-Type:application/json");
 require_once("../init.php");

 @$dairy_id = $_REQUEST["dairy_id"];

$sql = "DELETE FROM dairy_info WHERE dairy_id=$dairy_id";
$result = mysqli_query($conn,$sql);

echo json_encode($result);

