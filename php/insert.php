<?php
include "connect.php";

    if(!empty($_POST['place_name']) && !empty($_POST['address']) && !empty($_POST['description'])){
      
      $name=$_POST['place_name'];
      $address=$_POST['address'];
      $description=$_POST['description'];
      $image_url=$_POST['image_url'];
      $time=$_POST['time'];
      $distance=$_POST['distance'];
      $sql ="INSERT INTO addplace(id, place_name, address, description, image_url, time, distance)
       VALUES (NULL, '".$name."', '".$address."', 
       '".$description."', '".$image_url."', '".$time."', '".$distance."')";
       mysqli_query($conn,$sql);
    }
?>