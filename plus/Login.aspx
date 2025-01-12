<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FF_al_15.Login" %>

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
</head>

<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
           
        </nav>
        <div class="my-content">
            <div class="container">
                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1 style="color: #FF0000">We missed you!</h1>
                        <div class="myform-top">
                            <div class="myform-top-left">
                                <h3></h3>
                                <p>Enter your username and password</p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            <%--<form role="form" action="" method="post" class="">--%>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Username..." type="text" class="form-control" onpaste="return false" minlength="4" MaxLength="15" />
                                </div>
                                <div class="form-group">
                                </div>

                                    <asp:TextBox ID="TxtContra" runat="server" placeholder="Password..." type="password" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
                            <%--</form>--%>

                                <asp:Button runat="server" Text="Log in" OnClick="Unnamed1_Click"></asp:Button>

                               

                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
						&copy; Food Parade <a>2020.</a> No rights <a>reserved</a>.</div>
				</div>
			</footer>
    </form>
	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
</body>
</html>