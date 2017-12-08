<?php
header("Content-Type:application-json");
require_once("../init.php");
sleep(1);
@$kw=$_REQUEST["kw"];
if($kw) $kw=urldecode($kw);
$sql="select *, (select sm from pics where pics.product_id=products.product_id limit 1) as sm from products inner join doctors using(doctor_id) ";

@$min=$_REQUEST["min"];
@$max=$_REQUEST["max"];
if($min!=null&&$max!=null)
  $sql.=" where newPrice>=$min and newPrice<=$max ";

if($kw){
  $kws=explode(" ",$kw);//js:split
  for($i=0;$i<count($kws);$i++){
    $kws[$i]=" (products.title like '%".$kws[$i]."%' or  kword like '%".$kws[$i]."%') ";
  }
	$sql.=implode(" and ",$kws);
}

$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_row($result);
if($rows) $count=count($rows);
else $count=0;

@$s=$_REQUEST["sort"];
if($s=="zn") $sort=" spec3 desc ";
else if($s=="xl") $sort=" yy_count desc";
else if($s=="al") $sort=" d_count desc";
else if($s=="pf") $sort=" score desc";
else if($s=="jgd") $sort=" newPrice desc";
else if($s=="jga") $sort=" newPrice asc";
else if($s=="zx") $sort=" product_id desc";
else $sort=" spec3 desc ";

$pageSize=8;
@$pno=$_REQUEST["pno"];
if(!$pno) $pno=1;
$offset=$pageSize*($pno-1);

$sql.=" order by $sort limit $offset,$pageSize ";
$result=mysqli_query($conn,$sql);
$output=[
    "pageSize"=>$pageSize,
    "count"=>$count,
    "pno"=>$pno,
    "pageCount"=>ceil($count/$pageSize),
    "sort"=>$s,
    "data"=>mysqli_fetch_all($result,1)
];
echo json_encode($output);