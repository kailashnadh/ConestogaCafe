<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="OnlineFood.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClasss="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" CssClass="mydatagrid"></asp:GridView>
    <table class="nav-justified">
        <tr>
            <td class="text-center">Name:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="text-center">Mobile Number:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="text-center">Address:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>    
    </table>
    <div class="col-sm-12">
        
        <div class="col-sm-4">
            <asp:Button ID="Button1" runat="server" Text="Check Out" CssClass="button" OnClick="Button1_Click" />
        </div>      
    </div>    
</asp:Content>
