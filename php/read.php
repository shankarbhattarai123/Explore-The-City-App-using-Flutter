<?php
header("Access-Control-Allow-Origin: *");
include 'connect.php';
  $response[] = array();
         $sql = "SELECT * FROM `addplace`";
         $result = mysqli_query($conn,$sql);
         $numrows = mysqli_num_rows($result);
         if($result){
             $i=0;
            while($row = mysqli_fetch_assoc($result)){
                $response[$i]['id']=$row['id'];
                $response[$i]['place_name']=$row['place_name'];
                $response[$i]['address']=$row['address'];
                $response[$i]['des']=$row['description'];
                $response[$i]['image_url']=$row['image_url'];
                $response[$i]['time']=$row['time'];
                $response[$i]['distance']=$row['distance'];
                $i++;
            }
            echo json_encode($response,JSON_PRETTY_PRINT);
         }