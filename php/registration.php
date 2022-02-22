
<?php 
include 'connect.php';
$userdata=array();
if (isset($_POST['submit'])){
$username=mysqli_real_escape_string($conn,$_POST['username']);
$email=mysqli_real_escape_string($conn,$_POST['email']);
$pass=mysqli_real_escape_string($conn,$_POST['password']);
$cpass=mysqli_real_escape_string($conn,$_POST['cpassword']);
// $pass =password_hash($password,PASSWORD_BCRYPT);
// $cpass =password_hash($cpassword,PASSWORD_BCRYPT);
$emailquery="SELECT * from login WHERE email='$email' ";
$result = mysqli_query($conn,$emailquery);
$emailcount =mysqli_num_rows($result);
if($emailcount>0)
{
    echo "Email already exist!!";
}
else{
    if($pass===$cpass){
       $insertquery= "INSERT INTO login(`username`, `email`, `password`)
        VALUES ('$username', '$email', '$pass')";
         $result = mysqli_query($conn,$insertquery);
         if ($result) {
            $sql ="SELECT * FROM login WHERE username='".$username"'";
            $result = mysqli_query($conn,$sql);
            $row = mysqli_fetch_array($result);
            $userdata=$row;
          } else {
            echo "Error registering User ". mysqli_error($conn);
          }
    }else{
        echo "passwords are not matching!!";
    }
}

    }
echo json_encode($userdata);


?>

 