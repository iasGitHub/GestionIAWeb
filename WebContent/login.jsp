<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Public/login/fonts/icomoon/style.css">
    <link rel="stylesheet" href="Public/login/css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Public/login/css/bootstrap.min.css">
    <!-- Style -->
    <link rel="stylesheet" href="Public/login/css/style.css">

    <title>Se Connecter</title>
  </head>
  <body>
  

  <div class="d-md-flex half">
    <div class="bg" style="background-image: url('Public/login/images/bg_1.jpg');"></div>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="form-block mx-auto">
              <div class="text-center mb-5">
                <h3 class="text-uppercase">Connectez-vous sur la plateforme de l' <strong>Institut Académique</strong></h3>
              </div>
              <form action="#" method="post">
                <div class="form-group first">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" placeholder="your-email@gmail.com" id="email">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" placeholder="Your Password" id="password">
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Remember me</span>
                    <input type="checkbox" checked="checked"/>
                    <div class="control__indicator"></div>
                  </label>
                  <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span> 
                </div>

                <input type="submit" value="Log In" class="btn btn-block py-2 btn-primary">
                <a href="#" class="btn btn-block py-2 btn-google"><span class="icon-google mr-3"></span> Login with Google</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <script src="Public/login/js/jquery-3.3.1.min.js"></script>
    <script src="Public/login/js/popper.min.js"></script>
    <script src="Public/login/js/bootstrap.min.js"></script>
    <script src="Public/login/js/main.js"></script>
  </body>
</html>