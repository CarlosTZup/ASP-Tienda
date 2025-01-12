<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_customer.aspx.cs" Inherits="FF_al_15.WebForm4" %>

<!DOCTYPE html>

<html>
<title>Welcome | Food Parade</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">

    <!-- Header -->
			<header id="header">
				<a class="logo" href="Index.aspx">Food Parade</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="Index.aspx">Home</a></li>
					<li><a href="register.aspx">Sign Up</a></li>
					<li><a href="Login.aspx">Sign In</a></li>
					<li><a href="index_rest.aspx">Food Parade for restaurants</a></li>
				</ul>
			</nav>


<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <h1><b></b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span> 
      <button class="w3-button w3-black">ALL</button>
      <button class="w3-button w3-white"><i class="fa fa-burger w3-margin-right"></i>Mexican</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-china w3-margin-right"></i>Chinese</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-cofee-pin w3-margin-right"></i>Cofee & Style</button>  
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-cofee-pin w3-margin-right"></i>Breakfast</button>  
    </div>
    </div>
  </header>
  
  <!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="assets/images/comida-china.jpg"  style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>Product's name</b></p>
        <p>Product's description.</p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="assets/images/burritos.jpg"  style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>Product's name</b></p>
        <p>Product's description.</p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="assets/images/hamburger.png" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>Product's name</b></p>
        <p>Product's description</p>
      </div>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="assets/images/cafe.jpg"  style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>Product's name</b></p>
        <p>Product's description</p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="assets/images/huevos.jpg"  style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>Product's name</b></p>
        <p>Product's description.</p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="assets/images/tacos.jpg"  style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>Product's name</b></p>
        <p>Product's description.</p>
      </div>
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>

  

 
  
<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="content">
						<section>
							<h3>our commitment</h3>
							<p>We are committed to providing you with the best service, in the shortest possible time.</p>
						</section>
						<section>
							<h4>Frquently Asked Quetions</h4>
							<ul class="alt">
								<li><a href="FAQ.aspx">¿What if theres is something wrong with my delivery?</a></li>
								<li><a href="FAQ.aspx">¿How do I know how viable is the service of the restaurant?</a></li>
								<li><a href="FAQ.aspx">¿Do they have the same price on the webpage and restaurant?</a></li>
								<li><a href="FAQ.aspx">¿What happens if my food never arrives?</a></li>
							</ul>
						</section>
						<section>
							<h4>Our social media (we don't actually have any of these, but we think it looks cool)</h4>
							<ul class="plain">
								<li><a href="https://twitter.com/?lang=es"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
								<li><a href="https://www.facebook.com"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
								<li><a href="https://www.instagram.com/?hl=es-la"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
							</ul>
						</section>
					</div>
					<div class="copyright">
						&copy; Food Parade <a>2020.</a> No rights <a>reserved</a>.
					</div>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>