 <?php
 header("Content-Type:application/json");
 require_once("../init.php");

 $sql="SELECT doctor_id,doctor_name FROM doctors ";

 $result=mysqli_query($conn,$sql);
 $rows=mysqli_fetch_all($result,1);

 echo json_encode($rows);