<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myorders.aspx.cs" Inherits="OnlineFood.myorders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClasss="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" CssClass="mydatagrid">
        <Columns>
            <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" 
                    Text="View Order" CssClass="button" onclick="Button1_Click" />             
            </ItemTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <table class="nav-justified">
        <tr>
            <td></td>
            <td class="text-center" colspan="2">
               
                <asp:Label ID="Label1" runat="server" Text="Order Information" Font-Bold="True" Font-Size="Large" Visible="false" style="text-align: center"></asp:Label></td>
        </tr>
    </table>
    <asp:GridView ID="GridView2" runat="server" CssClasss="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" CssClass="mydatagrid"></asp:GridView>
</asp:Content>
