<?php
header("Content-Type:application/json");
require_once("../init.php");
@$pid=$_REQUEST["pid"];
if($pid){
  $output=[
    //"info":
    //"imgs":
  ];
  $sql="select * from products where product_id=$pid";
  $output["info"]=mysqli_fetch_All(mysqli_query($conn,$sql),1)[0];
  $sql="select * from pics where product_id=$pid";
  $output["imgs"]=mysqli_fetch_All(mysqli_query($conn,$sql),1);
  echo json_encode($output);
}