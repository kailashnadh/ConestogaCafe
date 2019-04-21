<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineFood.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="Content/home.css" rel="stylesheet" />

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
     <h1 style="text-align: center; margin-top: 0px;">CONESTOGA MOVIES</h1>
    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
            <li data-target="#demo" data-slide-to="3"></li>
            <li data-target="#demo" data-slide-to="4"></li>
            <li data-target="#demo" data-slide-to="5"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:Image ID="image2" runat="server" ImageUrl="~/Images/banners/desert1.jpg" Width="100%" Height="400" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="image1" runat="server" ImageUrl="~/Images/banners/desert2.jpg" Width="100%" Height="400" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="image3" runat="server" ImageUrl="~/Images/banners/pizza1.jpg" Width="100%" Height="400" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="image4" runat="server" ImageUrl="~/Images/banners/pizza2.jpg" Width="100%" Height="400" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="image5" runat="server" ImageUrl="~/Images/banners/starter1.jpg" Width="100%" Height="400" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="image6" runat="server" ImageUrl="~/Images/banners/starter2.jpg" Width="100%" Height="400" />
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <form id="form1" runat="server" class="form-horizontal">

          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Conestoga Cafe</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="nav navbar-nav navbar-right">
                   <li class="nav-item">
                        <a class="nav-link" href="login.aspx">Login </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reister.aspx">Register </a>
                    </li>
                </ul>
            </div>
        </nav>
         <div class="col-sm-12">
         <div class="col-sm-2">

        </div>
        <div class="col-sm-4">
            <h3> Pizzas </h3>
        </div>
        <div class="col-sm-4">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/banners/pizza1.jpg" OnClick="ImageButton1_Click" />
        </div>
    </div>
    <div class="col-sm-12">
                 <div class="col-sm-2">

        </div>
        <div class="col-sm-4">
            <h3> Desert </h3>
        </div>
        <div class="col-sm-4">
           <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/banners/desert1.jpg" OnClick="ImageButton2_Click" />
        </div>
    </div>
    <div class="col-sm-12">
                 <div class="col-sm-2">

        </div>
        <div class="col-sm-4">
            <h3>Starters</h3>
        </div>
        <div class="col-sm-4">
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/banners/starter1.jpg" OnClick="ImageButton3_Click" />
        </div>
    </div>


        <div class="modal-footer">
            <p style="margin-right: 50%">To contact us call us at 800-555-0400 or mail us at <a href="mailto:sportspro@sportsprosoftware.com">sportspro@sportsprosoftware.com</a></p>
        </div>
    </form>
</body>
</html>


