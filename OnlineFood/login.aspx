<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineFood.login" %>

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
     <h1 style="text-align: center; margin-top: 0px;">CONESTOGA CAFE</h1>
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
        
    <form id="form1" runat="server" class="form-horizontal">
         <table class="nav-justified">
         <tr><td class="text-center"><h3> USER LOGIN</h3></td></tr>
        <tr>
            <td class="text-center"><asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User Name" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="login"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text-center">  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="login"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text-center"><asp:Button ID="Button1" CssClass="button" runat="server" Text="Login" OnClick="Button1_Click"/></td>
            <td><asp:Button ID="Button2" CssClass="button" runat="server" Text="Register" OnClick="Button2_Click" ValidationGroup="login" /></td>
        </tr>
         <tr>
             <td colspan="2" class="text-center">
                 <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label></td>
         </tr>
    </table>


        <div class="modal-footer">
            <p style="margin-right: 50%">To contact us call us at 800-555-0400 or mail us at <a href="mailto:sportspro@sportsprosoftware.com">sportspro@sportsprosoftware.com</a></p>
        </div>
    </form>
</body>
</html>
