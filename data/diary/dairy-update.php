<?php
require_once("../init.php");
@$img1=$_REQUEST["img1"];
@$img2=$_REQUEST["img2"];
@$doc_id=$_REQUEST["doc_id"];
@$item_id=$_REQUEST["item_id"];
@$days=$_REQUEST["days"];
@$dairy_id=$_REQUEST["dairy_id"];
//4:设置目标文件夹位置
$des1 =  "../../img/picture2/".$img1;
move_uploaded_file("c:/xampp/temp/$img1",$des1);
$des2 =  "../../img/picture2/".$img2;
move_uploaded_file("c:/xampp/temp/$img2",$des2);
if($dairy_id==null){
    $sql="insert into dairy_info (days,before_pic,after_pic,detail_id,doctor_id) values ($days,'img/picture2/$img1','img/picture2/$img2',$item_id,$doc_id)";
}else{
    $sql="update dairy_info set days=$days,before_pic='$img1',after_pic='$img2',detail_id=$item_id,doctor_id=doc_id where dairy_id=$dairy_id);
}
mysqli_query($conn,$sql);