<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginRest.aspx.cs" Inherits="FF_al_15.LoginRest" %>

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
		
    <form id="form1" runat="server">
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

         Restaurant's name:<asp:TextBox ID="Textusernamelog" runat="server"></asp:TextBox>
         Password::<asp:TextBox ID="Textpasswordlog" runat="server"></asp:TextBox>

         <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />

          <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>

      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>
      </form>
  </body>
</html>