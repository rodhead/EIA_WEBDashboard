<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<title>DashBoard</title>
<style>
.navbar-login
{
    width: 305px;
    padding: 10px;
    padding-bottom: 0px;
}

.navbar-login-session
{
    padding: 10px;
    padding-bottom: 0px;
    padding-top: 0px;
}

.icon-size
{
    font-size: 87px;
}
</style>
<script>


document.getElementById("welcomeUsername").innerHTML = ${name};

</script>
</head>
<body>
<!-- <video poster="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/polina.jpg" id="bgvid" playsinline autoplay muted loop>
  
- Video needs to be muted, since Chrome 66+ will not autoplay video with sound.
WCAG general accessibility recommendation is that media such as background video play through only once. Loop turned on for the purposes of illustration; if removed, the end of the video will fade in the same way created by pressing the "Pause" button 
<source src="http://thenewcode.com/assets/videos/polina.webm" type="video/webm">
<source src="http://thenewcode.com/assets/videos/polina.mp4" type="video/mp4">

</video> -->
<nav class="navbar navbar-expand-sm bg-light navbar-light navbar-inverse bg-inverse fixed-top">
        <div class="container">

            <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span> 
            </button>
            <a target="_blank" href="#" class="navbar-brand">EIA - DashBoard</a>
        </div>
        <div class="collapse navbar-collapse">
            <!-- <ul class="nav navbar-nav">
                <li><a href="#">Inicio</a></li>
                <li class="active"><a href="http://bootsnipp.com/snippets/featured/nav-account-manager" target="_blank">Inspirado en este ejemplo</a></li>
                 <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">DropDown
                    <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Link 2</a></li>
                    </ul>
                 </li>              
             </ul> -->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span> 
                        <strong id="welcomeUsername">${name}</strong>
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="navbar-login">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <p class="text-center">
                                            <span class="glyphicon glyphicon-user icon-size"></span>
                                        </p>
                                    </div>
                                    <div class="col-lg-8">
                                        <p class="text-left"><strong>${name}</strong></p>
                                        <p class="text-left small">${email}</p>
                                        <p class="text-left">
                                            <a href="#" class="btn btn-primary btn-block btn-sm">Account Details</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="navbar-login navbar-login-session">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>
                                            <a href="#" class="btn btn-danger btn-block">Log out</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        </div>
      </nav>
<header id="dashboardHeader">
<div class="home-inner">
<div class="container" style="background-color: #F0FFFF">
	hello
	<div class="row">
		<div class="col-xl-12" style="background-color:pink">
			hello again
		</div>
	
	</div>
</div>
</div>
</header>
  
<!-- nav bar ends here -->



</body>
</html>