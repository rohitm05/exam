<?php
include "con.php";
session_start(); 
if (isset($_SESSION["username"]) || isset($_COOKIE["username"])) {?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="index.php">Start Bootstrap</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        
      </div>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="#">Settings</a>
            <a class="dropdown-item" href="#">Activity Log</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Login Screens:</h6>
            <a class="dropdown-item" href="login.html">Login</a>
            <a class="dropdown-item" href="register.html">Register</a>
            <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Other Pages:</h6>
            <a class="dropdown-item" href="404.html">404 Page</a>
            <a class="dropdown-item" href="blank.html">Blank Page</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Charts</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="category.php">
            <i class="fas fa-fw fa-table"></i>
            <span>Category</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="usermanagement.php">
            <i class="fas fa-fw fa-table"></i>
            <span>Users</span></a>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">View Paper</li>
          </ol>

         
        <table class="table table-striped" border="4">
        	<?php $i=1; 
        	$query="select question.question,question.answer1,question.answer2,question.answer3,question.answer4,question.correct_ans,user_answer.answer from user_answer inner join question on user_answer.question_id=question.id where user_id='".$_REQUEST['id']."'"; 
        	$result=mysqli_query($con,$query);
        	while ($arr=mysqli_fetch_array($result,MYSQLI_BOTH)):
        	?>
        		<tr><td>
  <p>Q<?php echo $i." "."<b>".$arr['question']."</b>";?></p>
  <input type="radio"  <?php if($arr['answer']=='1') echo "checked";?> value="1" ><span <?php if($arr['answer']=='1') {  if($arr['answer']==$arr['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr['correct_ans']=='1'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr['answer1'] ?></span> <br>
  <input type="radio"  <?php if($arr['answer']=='2') echo "checked";?> value="2"> <span <?php if($arr['answer']=='2') {  if($arr['answer']==$arr['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr['correct_ans']=='2'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr['answer2'] ?></span> <br>
   <input type="radio" <?php if($arr['answer']=='3') echo "checked";?> value="3"> <span <?php if($arr['answer']=='3') {  if($arr['answer']==$arr['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr['correct_ans']=='3'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr['answer3'] ?></span> <br>
  <input type="radio"  <?php if($arr['answer']=='4') echo "checked";?> value="4"> <span <?php if($arr['answer']=='4') {  if($arr['answer']==$arr['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr['correct_ans']=='4'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr['answer4'] ?></span> 
 
		</td></tr>
		 <?php
		  $i++;
		endwhile; ?>
        </table>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="logout.php">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>

  </body>

</html>
<?php }
else
  {
    header("Location: admin-login.php");
  }?>