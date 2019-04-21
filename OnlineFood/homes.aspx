<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homes.aspx.cs" Inherits="OnlineFood.homes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
