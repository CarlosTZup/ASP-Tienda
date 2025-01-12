<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FF_al_15.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Food Parade</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">

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

		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h1>Bringing joy of food, all the way to your house.</h1>
					<p><br />
					From <a>us.</a> To you.</p>
				</div>
				<video autoplay loop playsinline src="assets/images/banner2.mp4"></video>
			</section>

		<!-- Highlights -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<h2>IT IS ALL ABOUT YOU</h2>
						
					</header>
					<div class="highlights">
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-vcard-o"><span class="label">Icon</span></a>
									<h3>Reliable</h3>
								</header>
								<p>All our delivery boys must have identification cards so that you know who is giving you, your order. </p>
							</div>
						</section>												
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-line-chart"><span class="label">Icon</span></a>
									<h3>Economical</h3>
								</header>
								<p>We care about you, that’s why we give the price you deserve.</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-paper-plane-o"><span class="label">Icon</span></a>
									<h3>Always in-time</h3>
								</header>
								<p>We understand your time is very valuable, that is why we always work hard for your food to come in the shortest possible time.</p>
							</div>
						</section>						
					</div>
				</div>
			</section>

		<!-- CTA -->
			<section id="cta" class="wrapper">				
				<video autoplay loop playsinline src="assets/images/fuego.mp4"></video>
				<div class="inner">					
					<h2>Join us.</h2>
					<p>Earn money by partnering with us and increase your sales.</p>
				</div>
			</section>

		<!-- Testimonials -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<h2>some happy words, from happy clients</h2>
						<p>Come work with us, and be the one who receives these and more fantabolous compliments about your great job.</p>
					</header>
					<div class="testimonials">
						<section>
							<div class="content">
								<blockquote>
									<p>Fabulous, definitely gonna order again, the delivery boy was so sweet and respectful</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="assets/images/louise.jpeg" alt="" />
									</div>
									<p class="credit">- <strong>Louise Greenfield</strong> <span></span></p>
								</div>
							</div>
						</section>
						<section>
							<div class="content">
								<blockquote>
									<p>Im amazed by the quality and it took way less than i expected to arrive!.</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="assets/images/unknown.png" alt="" />
									</div>
									<p class="credit">- <strong>René Negro</strong> <span></span></p>
								</div>
							</div>
						</section>
						<section>
							<div class="content">
								<blockquote>
									<p>You can do better with the delivery time, but overall it was an amazing service!</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="assets/images/mp.jpg" alt="" />
									</div>									
									<p class="credit">- <strong>Ricardo Infante</strong> <span></span></p>
								</div>
							</div>
						</section>
					</div>
				</div>
			</section>

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
