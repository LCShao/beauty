<?php
header("Content-Type:application/json");
//1:获取上传文件mypic的文件名name
//2:获取上传文件mypic的大小size(字节)
$picname = $_FILES["mypic"]["name"];
$picsize = $_FILES["mypic"]["size"];
//3:获得已经上传的临时文件
$src =  $_FILES["mypic"]["tmp_name"];
echo $src;
