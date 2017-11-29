<?php

header("Content-Type:application/json");
require_once("../init.php");

@$u=$_REQUEST["uname"];
@$p=$_REQUEST["upwd"];

$sql="select * from be_user where uname='$u' and  binary upwd='$p'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);

if($row!=null){
  session_start();
  $_SESSION["uid"]=$row[0];
	echo '{"code":1,"msg":"欢迎登录"}';
	exit;
}else{
	echo '{"code":-2,"msg":"用户名密码错误"}';
};
