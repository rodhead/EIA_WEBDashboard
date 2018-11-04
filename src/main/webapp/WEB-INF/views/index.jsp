<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <script type="text/javascript" src="resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="resources/js/popper.min.js"></script>
        <script type="text/javascript" src="resources/js/eiahomepage.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        

        <title>EIA</title>
        
        <style type="text/css">
        #passstrength {
    color:green;
    font-family:verdana;
    font-size:8px;
    font-weight:bold;
}
        
        </style>
    </head>

    <body>
    
    
    
      <nav class="navbar navbar-expand-sm bg-light navbar-light navbar-inverse bg-inverse fixed-top">
        <div class="container">

            <a href="#" class="navbar-brand">EIA</a>
            <div class="collapse navbar-collapse"  id="navbarCollapse">
              <ul class="navbar-nav ml-auto">	
                <li class="nav-item">
                  <a class="nav-link" href="">What is it?</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="">Explore</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="">Share</a>
                </li>

              </ul>
            </div>
        </div>
      </nav>
      <header id="home-section">
        <div class="dark-overlay">
          <div class="home-inner">
            <div class="container">
              <div class="row">
                <div class="col-md-8">
                  <h1 class="display-4">Create your first ever <strong>EveryOne's Internet Account</strong> here</h1>
                  <div class="d-flex flex-row">
                    <div class="p-4 align-self-start">
                      <i class="fa fa-check">

                      </i>
                    </div>
                      <div class="p-4 align-self-end">
                        Hasle free one tab access to your favourite application
                      </div>
                  </div>
                  <div class="d-flex flex-row">
                    <div class="p-4 align-self-start">
                      <i class="fa fa-check">

                      </i>
                    </div>
                      <div class="p-4 align-self-end">
                        Backed by 100% RSA Encryption
                      </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card card-primary card-form text-center">
                    <div class="card-block">
                      <h4>Create your EIA account</h4>
                        <input type="button" id="submitLoginbtn" value="login"  class=" btn btn-primary ">
                      <input type="button" id="submitcreatebtn" value="Create"  class="btn btn-warning ">
                      <div >
                      <form name="myFormCreate" id="myFormCreate">
                        <div class="form-group">
                          <input type="text" required="required"  id="username" name="username" class="form-control form-control-lg" placeholder="UserName" >
                        </div>
                        <div class="form-group">
                          <input type="password" required="required"  id="password" name="password" class="form-control form-control-lg" placeholder="Password">
                          <span id="passstrength"></span>
                        </div>
                        <div class="form-group">
                          <input type="password" required="required"  name="confirmPassword" class="form-control form-control-lg" placeholder="Confirm Password">
                          
                          <span id="confirmpass"></span>
                        </div>
                        <div class="form-group">
                          <input type="email" required="required"  id="email" name="email" class="form-control form-control-lg" aria-describedby="emailHelp" placeholder="Email">
                          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group row">
						    <div class="col-sm-12">
						      <button type="button" id="submitcreate" class="btn btn-primary">Sign up</button>
						    </div>
						  </div>
                        
                        <span id="displayMessage"></span>
                      </form>
                      </div>
                       <form action="myFormlogin" name="myFormlogin" id="myFormlogin" method="post" onsubmit="return checkForm(this);">
                        <div class="form-group">
                          <input type="text"  required="required"  id="usernameLogin" name="usernameLogIn" class="form-control form-control-lg" placeholder="UserName" >
                          
                        </div>
                        <div class="form-group">
                          <input type="password" required="required"  id="passwordLogin" name="passwordLogin" class="form-control form-control-lg" placeholder="Password" data-toggle="tooltip" data-placement="left" title="Must Contain alphanumeric">
                        </div>
                        <div class="form-group row">
						    <div class="col-sm-12">
						      <button type="submit" id="submitLogin" class="btn btn-primary">Sign in</button>
						    </div>
						    
						  </div>
						  <div class="col-sm-12">
						  <Span id="loginFailureSpan" style="color:red"></Span>
							   <div class="etc-login-form">
								<p>Forgot Your Password? <a href="#">click here</a></p>
								</div>
						  </div>
						  <span id="displayMessage"></span>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  EIA LAB
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy; made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">EIA</a> for a better web.
          </div>
          <!-- your footer here -->
        </div>
      </footer>

        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/popper.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
    </body>
</html>
