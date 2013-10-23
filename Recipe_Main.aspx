<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Recipe_Main.aspx.vb" Inherits="Recipe_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    This is the Recipe_Main page (Gridview)<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Recipe]"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Recipe_ID" DataSourceID="SqlDataSource1" Height="50px" Width="682px">
        <Fields>
            <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
            <asp:BoundField DataField="Submitted_by" HeaderText="Submitted by" SortExpression="Submitted_by" />
            <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient #1" SortExpression="Ingredient_1" />
            <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient #2" SortExpression="Ingredient_2" />
            <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient #3" SortExpression="Ingredient_3" />
            <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient #4" SortExpression="Ingredient_4" />
            <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient #5" SortExpression="Ingredient_5" />
            <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />


</asp:Content>

