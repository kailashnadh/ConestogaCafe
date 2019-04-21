<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="OnlineFood.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Order Information</h4>
    
    <table class="nav-justified">
        <tr>
            <td class="text-center">Name:</td>
            <td><asp:Label ID="Label1" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td class="text-center">Mobile Number:</td>
            <td><asp:Label ID="Label2" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td class="text-center">Address:</td>
            <td><asp:Label ID="Label3" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td class="text-center">Order Items:</td>
            <td><asp:Label ID="Label4" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td class="text-center">Order Price:</td>
            <td><asp:Label ID="Label5" runat="server" ></asp:Label></td>
        </tr>
    </table>
</asp:Content>
