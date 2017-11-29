<?php
 header("Content-Type:application/json");
 require_once("../init.php");
 $pageSize=8;

 @$pno = $_REQUEST["pno"];
 if(!$pno) $pno=1;

$sql = "SELECT count(*) FROM dairy_info";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);//??
$count = intval($row[0]);
$pageCount=ceil($count/$pageSize);

$offset=($pno-1)*$pageSize;

$sql="SELECT dairy_id,days,after_pic,before_pic,skill_name, hospital, doctor_name, uid FROM dairy_info inner join skills on detail_id=skill_id inner join doctors using(doctor_id) limit $offset,$pageSize";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,1);
session_start();
$uid=$_SESSION["uid"];
for($i=0;$i<count($rows);$i++){
  $rows[$i]["isAuthor"]=($uid==$rows[$i]["uid"]?1:0);
}
$pageCount = ceil($count/$pageSize);

$output = [
   "recordCount"=>$count,   //????
   "pageSize"=>$pageSize,   //???
   "pageCount"=>$pageCount, //???
   "pno"=>$pno,             //????
   "data"=>$rows            //?????
 ];

 //11:??
 echo json_encode($output);