
<?php 
include 'header.php'; 
?>
<?php 
// include 'sidebar.php'; 
?>
<?php
include 'connect.php';
$id = $_GET['id'];
$sql = "SELECT * FROM `addplace1` WHERE id=$id";
$result = mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);

   //update data
   if (isset($_POST['submit'])){
    if(!empty($_POST['place_name']) && !empty($_POST['address']) && !empty($_POST['description'])){
      
      $name=$_POST['place_name'];
      $address=$_POST['address'];
      $des=$_POST['description'];
     
        $sql="UPDATE `addplace1` SET `Place Name` = '$name', `Address` = '$address', `Description` = '$des' WHERE `addplace1`.`Id` = $id";
      $result = mysqli_query($conn,$sql);
  if ($result) {
    echo "
           <div class='alert alert-success' role='alert'>
     Record has been successfully Updated!
     </div>
    
        ";
    //   header('location: addplace.php');   
    ?>
    <script>
        location.replace("addplace.php");
    </script>
    <?php  
    } else {
      echo "Error updating database ". mysqli_error($conn);
    }
  
    }else{
      echo "all field required";
    }}

?>
    <div id="wrapper">


        <div id="page-wrapper">
            <div class="row">
              
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                    <h4>Update Place Information</h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form action="" method="POST" role="form">
                                        <!-- <div class="form-group">
                                            <label>Date:</label>
                                            <input class="form-control" name="date">
                                            <!-- <p class="help-block">Example block-level help text here.</p> -->
                                        </div> -->
                                        <div class="form-group">
                                            <label>Place Name:</label>
                                            <input class="form-control" name="place_name" value=<?php echo $row['Place Name'];?>>
                                            <!-- <p class="help-block">Example block-level help text here.</p> -->
                                        </div>
                                        <div class="form-group">
                                            <label>Address:</label>
                                            <input class="form-control" name="address" value=<?php echo $row['Address'];?>>
                                        </div>
                                       
                                        <!-- <div class="form-group">
                                            <label>Images of place:</label>
                                            <input type="file" name="image">
                                        </div> -->
                                        <div class="form-group">
                                            <label>Description:</label>
                                            <textarea class="form-control" name="description" rows="3"><?php echo $row['Description'];?></textarea>
                                        </div>
                                        <!--  -->
                                        <button type="submit" value="submit" name="submit" class="btn btn-default">Update</button>
                                        <!-- <button type="reset" class="btn btn-default">Reset Button</button> -->
                                    </form>
                                </div>
                            
    
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
