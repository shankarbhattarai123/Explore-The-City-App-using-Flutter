
<?php 
include 'insert.php';
include 'header.php'; 
?>
<?php 
// include 'sidebar.php'; 
?>
    <div id="wrapper">


        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add New Place</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        Add New Place
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form action="/bootstrap/pages/addplace.php" method="POST" role="form">
                                        <!-- <div class="form-group">
                                            <label>Date:</label>
                                            <input class="form-control" name="date">
                                            <!-- <p class="help-block">Example block-level help text here.</p> -->
                                        </div> -->
                                        <div class="form-group">
                                            <label>Place Name:</label>
                                            <input class="form-control" name="place_name">
                                            <!-- <p class="help-block">Example block-level help text here.</p> -->
                                        </div>
                                        <div class="form-group">
                                            <label>Address:</label>
                                            <input class="form-control" name="address">
                                        </div>
                                       
                                        <!-- <div class="form-group">
                                            <label>Images of place:</label>
                                            <input type="file" name="image">
                                        </div> -->
                                        <div class="form-group">
                                            <label>Description:</label>
                                            <textarea class="form-control" name="description" rows="3"></textarea>
                                        </div>
                                        <!--  -->
                                        <button type="submit" value="submit" name="submit" class="btn btn-default">Add place</button>
                                        <!-- <button type="reset" class="btn btn-default">Reset Button</button> -->
                                    </form>
                                </div><br><br><br>
                                <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Place Name</th>
      <th scope="col">Address</th>
      <th scope="col">Description</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  
        <?php
        include 'read.php';
        ?>
  </tbody>
</table>
                            
    
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
