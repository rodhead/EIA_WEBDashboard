<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <title >eia</title>
     <link rel="icon" href="resources/images/game-center.png" type="image/x-icon">
	<style>
    navbar-nav {
          flex-direction: row;
        }

        .nav-link {
          padding-right: .5rem !important;
          padding-left: .5rem !important;
        }

        /* Fixes dropdown menus placed on the right side */
        .ml-auto .dropdown-menu {
          left: auto !important;
          right: 0px;
        }
        .card-img-top {
      width: 30%;

}
.card{
  border:0px;
}

 </style>
 <script type="text/javascript">
function submitform()
{
document.forms["dashform"].submit();
}
</script>
  </head>
  <body  >

    <nav class="navbar  navbar-expand-lg navbar-dark bg-warning rounded sticky-top">
    <a class="navbar-brand lead" href="#">
       <img src="resources/images/game-center.png" alt="">
      eia</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsupportedcontent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
    <div class="collapse navbar-collapse"  id="navbarsupportedcontent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <form id="dashform" action="dashform" method="get">
            <a class="nav-link" href="javascript: submitform()">Dashboard</a>
        </form>

      </li>
      <li class="nav-item active">
        <a class="nav-link">How to do it?</a>
      </li>
    </ul>
    <ul class="navbar-nav justify-content-center">
      <li class="nav-item active lead">
        <a class="nav-link"><strong>App Store</strong></a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item ">
        <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" onkeyup="myFunction()" placeholder="Search" aria-label="Search">


      </form>
      <li class="nav-item  dropdown">
        <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><font color="black"> Misbah</font></a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Account Info</a>
          <a class="dropdown-item" href="#">Log out</a>
        </div>
      </li>
    </ul>
    </div>
  </nav>

<div class="container-fluid" >
  <div class="row justify-content-center" >
    <div class="col-sm-11 display-4" style="margin-right:30px ">
      <span >Choose from the options. Customize your feed!</span>
    </div>
  </div>
</div>
<div class="container-fluid" style="margin-top:20px">
  <div class="row justify-content-center">

    <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#exampleModalCenter">
  Search Apss
</button>
  </div>
</div>
<div class="container-fluid" style="margin-top:20px">
  <div class="row" style="">
    <div class="col-sm-3">

    <div class="card" style="width:18rem;">
  <img class="card-img-top" src="resources/images/news4.png" alt="Card image cap">
  <div class="card-body" style="">
    <h5 class="card-title lead">News</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-success ">Customize</a>
  </div>
</div>

</div>
    <div class="col-sm-3">
      <div class="card bg-light" style="width:18rem;">
    <img class="card-img-top" src="resources/images/fluctuation.png" alt="Card image cap">
    <div class="card-body" style="">
      <h5 class="card-title lead">Stocks</h5>
      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href="#" class="btn btn-success ">Customize</a>
    </div>
  </div>
    </div>
    <div class="col-sm-3">
      <div class="card " style="width:18rem;">
    <img class="card-img-top" src="resources/images/money.png" alt="Card image cap">
    <div class="card-body" style="">
      <h5 class="card-title lead">currency</h5>
      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href="#" class="btn btn-success ">Customize</a>
    </div>
  </div>
    </div>
    <div class="col-sm-3">
      <div class="card bg-light" style="width:18rem;">
        <img class="card-img-top" src="resources/images/food-cart.png" alt="Card image cap">
        <div class="card-body" style="">
          <h5 class="card-title lead">What's hot?</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-success ">Customize</a>
        </div>
    </div>
  </div>
  </div>
  <div class="row" style="margin-top:20px">
    <div class="col-sm-3">
      <div class="card bg-light" style="width:18rem;">
        <img class="card-img-top" src="resources/images/seo.png" alt="Card image cap">
          <div class="card-body" style="">
            <h5 class="card-title lead">Be Social</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-success ">Customize</a>
          </div>
    </div>
    </div>
    <div class="col-sm-3">
      <div class="card " style="width:18rem;">
        <img class="card-img-top" src="resources/images/date.png" alt="Card image cap">
          <div class="card-body" style="">
            <h5 class="card-title lead">Events</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-success ">Customize</a>
          </div>
    </div>
    </div>
    <div class="col-sm-3">
      <div class="card bg-light" style="width:18rem;">
        <img class="card-img-top" src="resources/images/payment-method.png" alt="Card image cap">
          <div class="card-body" style="">
            <h5 class="card-title lead">Shopping</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-success ">Customize</a>
          </div>
    </div>
    </div>
  </div>
</div>




     </body>
</html>
