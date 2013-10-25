<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" 
    Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        This is the Home page.

        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [Recipe]"></asp:SqlDataSource>
  
        <br />

        <asp:GridView ID="GridView1" class="Default_Gridview" runat="server" AutoGenerateColumns="False" DataKeyNames="Recipe_ID" 
            DataSourceID="SqlDataSource1"  >

            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_by" HeaderText="Submitted By" SortExpression="Submitted_by" />
                <asp:HyperLinkField DataNavigateUrlFields="Recipe_ID" 
                     DataNavigateUrlFormatString="Recipe_Main.aspx?Recipe_ID={0}" Text="Select" HeaderText="Select Recipe" />
            </Columns>

        </asp:GridView>



        <br />
    </div>
</asp:Content>

