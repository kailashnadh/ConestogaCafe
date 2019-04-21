<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pizza.aspx.cs" Inherits="OnlineFood.pizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClasss="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" CssClass="mydatagrid">
        <Columns>
            <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="button" onclick="Button1_Click" />             
            </ItemTemplate>
        </asp:TemplateField>
           
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image7" runat="server" ImageUrl='<%# Bind("image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="item_name" HeaderText="Item Name" />
            <asp:BoundField DataField="item_description" HeaderText="Incredients" />
            <asp:BoundField DataField="item_price" HeaderText="Price(In CAD)" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
</asp:Content>
