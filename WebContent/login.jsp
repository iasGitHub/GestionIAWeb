<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Public/Login/fonts/icomoon/style.css">
    <link rel="stylesheet" href="Public/Login/css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Public/login/css/bootstrap.min.css">
    <!-- Style -->
    <link rel="stylesheet" href="Public/Login/css/style.css">

    <title>Se Connecter</title>
  </head>
  <body>
  

  <div class="d-md-flex half">
    <div class="bg" style="background-image: url('Public/Login/images/bg_1.jpg');"></div>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="form-block mx-auto">
              <div class="text-center mb-5">
                <h3 class="text-uppercase">Connectez-vous sur la plateforme de l' <strong>Institut Académique</strong></h3>
              </div>
              <form action="Login" method="post">
                <div class="form-group first">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" placeholder="your-email@gmail.com" name ="email" id="email">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" placeholder="Your Password" name ="password" id="password">
                </div>

                <input type="submit" value="Login" class="btn btn-block py-2 btn-primary">
                <a href="#" class="btn btn-block py-2 btn-google"><span class="icon-google mr-3"></span> Login with Google</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <script src="Public/Login/js/jquery-3.3.1.min.js"></script>
    <script src="Public/Login/js/popper.min.js"></script>
    <script src="Public/Login/js/bootstrap.min.js"></script>
    <script src="Public/Login/js/main.js"></script>
  </body>
</html>