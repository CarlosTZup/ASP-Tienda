<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register_rest.aspx.cs" Inherits="FF_al_15.WebForm3" %>

<html>
<title>Sign Up</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
<body class="w3-light-grey">
     <form id="form1" runat="server">
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="#" class="w3-bar-item w3-button w3-red w3-mobile"><i></i>Food Parade</a>
  <a href="index_rest.aspx" class="w3-bar-item w3-button w3-mobile">Home</a>
  <a href="#about" class="w3-bar-item w3-button w3-mobile">About</a>
  <a href="loginRest.aspx" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile">Log in</a>
</div>  
<!-- Header -->
<header class="w3-display-container w3-content" style="max-width:1500px;">
  <img class="w3-image" src= "assets/images/sartenxd.jpeg"     alt= "The Hotel" style="min-width:1000px" width="1500" height="800">
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <div class="w3-container w3-red">
      <h2><i class="fa fa-coffee w3-margin-right"></i>Sign Up</h2>
    </div>
    <div class="w3-container w3-white w3-padding-16">
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i></i> Restaurant's name</label> <br />

              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <%--<input class="w3-input w3-border" type="text" name="resname" required>--%>
          </div>
          <div class="w3-half">
            <label><i></i>Restaurant's address</label> <br />

              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <%--<input class="w3-input w3-border" type="text" name="address" required>--%>
          </div>
        </div>
        <div class="w3-row-padding" style="margin:8px -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i></i> Owner's name</label>
               <br />
              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <%--<input class="w3-input w3-border" type="text" name="name" required>--%>
          </div>
          <div class="w3-half">
            <label><i></i>Restaurant's cellphone</label> <br />

              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <%--<input class="w3-input w3-border" type="text" name="cellphone" required>--%>
          </div>
           <div class="w3-row-padding" style="margin:8px -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i></i>password</label>      <br />

              <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <%--<input class="w3-input w3-border" type="text" name="password" required>--%>
          </div>
                 <div class="w3-half">
            <label><i></i> Email</label>  <br />

              <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <%--<input class="w3-input w3-border" type="text" name="email" required>--%>
          </div>
        </div>
            <asp:Button ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" class="w3-button w3-dark-grey"/>
      <%--  <button class="w3-button w3-dark-grey" type="submit"><i class="fa fa-search w3-margin-right"></i> Sign up</button>--%>
                  <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
              <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
      </form>
    </div>
  </div>    
</header>

  

  
<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-padding-32 w3-black w3-center w3-margin-top">
  
  <p>Food Parade 2020<a href="" target="_blank" class="w3-hover-text-green"></a></p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap() {
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
           </form>
</body>
