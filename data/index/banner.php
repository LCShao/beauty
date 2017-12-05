<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type:application/json");
require_once("../init.php");
$sql="SELECT * FROM be_index_carousel";
echo json_encode(sql_execute($sql));