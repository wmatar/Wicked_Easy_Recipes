<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="New_Recipe.aspx.vb" Inherits="New_Recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


     <br />
    here will be a new recipe<br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Recipe] WHERE [Recipe_ID] = @Recipe_ID" 
        InsertCommand="INSERT INTO [Recipe] ([Recipe_Name], [Submitted_by], [Ingredient_1], [Ingredient_2], 
        [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) 
        VALUES (@Recipe_Name, @Submitted_by, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, 
        @Preparation, @Notes)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Recipe]" 
        UpdateCommand="UPDATE [Recipe] SET [Recipe_Name] = @Recipe_Name, [Submitted_by] = @Submitted_by, 
        [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, 
        [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = 
        @Notes WHERE [Recipe_ID] = @Recipe_ID">
        <DeleteParameters>
            <asp:Parameter Name="Recipe_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Recipe_Name" Type="String" />
            <asp:Parameter Name="Submitted_by" Type="String" />
            <asp:Parameter Name="Ingredient_1" Type="String" />
            <asp:Parameter Name="Ingredient_2" Type="String" />
            <asp:Parameter Name="Ingredient_3" Type="String" />
            <asp:Parameter Name="Ingredient_4" Type="String" />
            <asp:Parameter Name="Ingredient_5" Type="String" />
            <asp:Parameter Name="Preparation" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Recipe_Name" Type="String" />
            <asp:Parameter Name="Submitted_by" Type="String" />
            <asp:Parameter Name="Ingredient_1" Type="String" />
            <asp:Parameter Name="Ingredient_2" Type="String" />
            <asp:Parameter Name="Ingredient_3" Type="String" />
            <asp:Parameter Name="Ingredient_4" Type="String" />
            <asp:Parameter Name="Ingredient_5" Type="String" />
            <asp:Parameter Name="Preparation" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Recipe_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Recipe_ID" 
        DataSourceID="SqlDataSource1" Height="50px" Width="682px" DefaultMode="Insert">
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
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />

</asp:Content>


