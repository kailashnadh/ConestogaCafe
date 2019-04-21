<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="OnlineFood.register" %>

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
         <table class="nav-justified">
         <tr><td class="text-center"><h3> USER REGISTRATION</h3></td></tr>
        <tr>
            <td class="text-center"><asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Required" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="login"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text-center">  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="login"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text-center">  <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label></td>
            <td><asp:TextBox ID="TextBox3" runat="server" EnableTheming="True"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Id is Required is Required" ControlToValidate="TextBox3" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="login"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid Email" Font-Bold="True" ControlToValidate="TextBox3" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="login"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center">  <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label></td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is Required is Required" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="login"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text-center"><asp:Button ID="Button1" CssClass="button" runat="server" Text="Register" OnClick="Button1_Click" ValidationGroup="login"/></td>
            <td><asp:Button ID="Button2" CssClass="button" runat="server" Text="Back to Login" OnClick="Button2_Click" /></td>
        </tr>
         <tr>
             <td colspan="2">
                 <asp:Label ID="Label3" runat="server" Text="Label" Visible="false"></asp:Label></td>
         </tr>
    </table>


        <div class="modal-footer">
            <p style="margin-right: 50%">To contact us call us at 800-555-0400 or mail us at <a href="mailto:sportspro@sportsprosoftware.com">sportspro@sportsprosoftware.com</a></p>
        </div>
    </form>
</body>
</html>
