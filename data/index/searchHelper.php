<?php
header("Content-Type:application-json");
require_once("../init.php");

@$kw=$_REQUEST["kw"];
$sql="select product_id,kword,title,yy_count from products ";
if($kw){
  $kws=explode(" ",$kw);//js:split
  for($i=0;$i<count($kws);$i++){
    $kws[$i]=" (title like '%".$kws[$i]."%' or  kword like '%".$kws[$i]."%') ";
  }
	$sql.=" where ".implode(" and ",$kws);
}
$sql.=" order by yy_count desc limit 10 ";
var_dump($sql);
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));