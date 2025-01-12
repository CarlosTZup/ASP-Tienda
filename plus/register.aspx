<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FF_al_15.register" %>

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
                        <h1 style="color: #FF0000">&nbsp;</h1>
                        <h1 style="color: #FF0000">First time, huh?</h1>
                        <div class="myform-top">
                            <div class="myform-top-left">
                                <h3></h3>
                                <p>Please fill in the fields with the required information</p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            <%--<form role="form" action="" method="post" class="">--%>
                                Full name:<br />
            <asp:TextBox ID= "Textfname" runat= "server"  Width= "880px"></asp:TextBox>
            Username:<br />
          <asp:TextBox ID= "Textusername" runat= "server"  Width= "880px"></asp:TextBox>
            Birthday: <br />
          <asp:TextBox ID= "Textbirthday" runat= "server" Type = "date" placeholder= "YYYY MM DD" Width= "880px"></asp:TextBox>
                            <br />
            Gender:<br />
          <asp:ListBox ID= "Listgender" runat= "server" Width= "880px">
                <asp:listItem Text= "Masculine" Value = "1"></asp:listItem>
                <asp:listItem Text= "Feminine" Value = "2"></asp:listItem>
                <asp:listItem Text= "Other" Value = "3"></asp:listItem>
          </asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat= "server"></asp:SqlDataSource>
            Address:<br />
          <asp:TextBox ID= "Textaddress" runat= "server" Width= "880px"></asp:TextBox>
            Email:<br />
          <asp:TextBox ID= "Textemail" runat= "server" Width= "880px"></asp:TextBox>
            Cellphone:<br />
          <asp:TextBox ID= "Textcellphone" runat= "server" Width= "880px"></asp:TextBox> 
            Password:<br />
          <asp:TextBox ID= "Textpassword1" runat= "server" type="password" Width= "880px"></asp:TextBox>
            <asp:HiddenField ID= "Textseed" Value= "random_string(100)" runat= "server"></asp:HiddenField>
            Repeat password:<br />
          <asp:TextBox ID= "Textpassword2" runat= "server" type="password" Width= "880px"></asp:TextBox>
                            <%--</form>--%>

           <asp:Button runat= "server" Text="Sign Up" CssClass= "mybtn" OnClick= "register_Click"></asp:Button>
           <asp:Literal ID= "alerta" runat= "server" Text=""></asp:Literal>
        

          <!-- Scripts -->
          <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>
      
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
      <script src="js/bootstrap.min.js"></script>
      </form>
       
   
  </body>
</html>