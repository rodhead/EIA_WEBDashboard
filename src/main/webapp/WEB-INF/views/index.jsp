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
    <div class="container-fluid" id="navcontainer" >
	<nav class="navbar fixed-top navbar-expand-md navbar-dark bg-dark ">
	
		<a class="navbar-brand" href="#" style="" >EIA</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsupportedcontent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse"  id="navbarsupportedcontent">
		<ul class="navbar-nav mr-auto" style="margin-left:70px">
			<!-- <li class="nav-item active">
				<a class="nav-link" href="#whatisit">What is it?<span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#navDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				Services
				</a>
				<div class="dropdown-menu" aria-lebelledby="navDropdown">
					<a class="dropdown-item" href="#">Admin Dashboards</a>
					<a class="dropdown-item" href="#">Web Apps</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#supports">Customization</a>
				</div>
			</li> -->
			<!-- <li class="nav-item active">
				<a class="nav-link" href="#">Help!<span class="sr-only">(current)</span></a>
			</li> -->
		</ul>
		<form class="form-inline" action="/action_page.php">
		    <div class="input-group">
		      <div class="input-group-prepend">
		        <span class="input-group-text">@</span>
		      </div>
		      <input type="text" class="form-control" placeholder="Username">
		    </div> 
  		</form>
		</div>
		
	</nav>
	</div>
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
  <!-- After LogIn Section Start here -->
  
  <!-- <div class="container-fluid" style="background-color:white; ">
  	<div id="whatisit" class="row justify-content-center" style="background-color:#ADEAEA">
  		<div class="col-sm-3 " >
  			<span id="" class="display-4">
  				<font color="black">What is it?</font>
  			</span>
  		</div>
  	
  	</div>
  	<div class="row">
  		<div class="col-sm-12 lead">
  		<font color="black">this is it</font>
  			
  		</div>
  	</div>
  </div>
   -->
      
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
          your footer here
        </div>
      </footer> 
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/popper.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
    </body>
</html>
