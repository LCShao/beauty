<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid!=null){
  $sql="select uname from be_user where uid=$uid";
  $result=mysqli_query($conn,$sql);
  $uname=mysqli_fetch_row($result)[0];
  echo json_encode(["ok"=>1,"uname"=>$uname]);
}else
  echo json_encode(["ok"=>0]);