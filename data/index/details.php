<?php
header("Content-Type:application/json");
require_once("../init.php");
@$skill_name=$_REQUEST["skill_name"];
$sql="SELECT * FROM skills where skill_name='$skill_name'";
$result=json_encode(sql_execute($sql));
echo $result;