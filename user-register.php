<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Register</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <?php if(isset($_SESSION['err_msg'])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION['err_msg']; unset($_SESSION['err_msg']);?></div>
        <?php } ?>
      <div class="card card-register mx-auto mt-5">
        <div class="card-header" align="center">Register an Account</div>
        <div class="card-body">
           
          <form method="post" action="user-register-backend.php">
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-12">
                  <div class="form-label-group">
                    Name:<input type="text" id="Name" name="name" class="form-control" placeholder="name" required="required" autofocus="autofocus">
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                Email address:<input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email address" required="required">
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                Mobile Number:<input type="text" id="mobile" name="mobile" class="form-control" placeholder="Mobile Number" required="required">
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    Password:<input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Password" required="required">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    Confirm password:<input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                  </div>
                </div>
              </div>
            </div>
            <input type="submit" name="reg-btn" class="btn btn-primary btn-block" value="Register">
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="user-login.php">Login Page</a>
            <a class="d-block small" href="#">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>
