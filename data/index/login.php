<?php
header("Access-Control-Allow-Origin: http://localhost:8080");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Credentials: true');
require_once("../init.php");

@$u=$_REQUEST["uname"];
@$p=$_REQUEST["upwd"];

$sql="select * from be_user where uname='$u' and  binary upwd='$p'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);

if($row!=null){
  session_start();
  $_SESSION["uid"]=$row[0];
	echo json_encode(["code"=>1]);
}else{
	echo json_encode(["code"=>0,"msg"=>"用户名密码错误"]);
}
