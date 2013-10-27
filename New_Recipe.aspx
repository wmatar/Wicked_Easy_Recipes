<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="New_Recipe.aspx.vb" Inherits="New_Recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        DataSourceID="SqlDataSource1"  DefaultMode="Insert" CssClass="Default_Detailsview">
        <CommandRowStyle CssClass="comd_dView" />
        <FieldHeaderStyle CssClass="header_style" />
        <Fields>
            <asp:TemplateField HeaderText="Recipe Name" SortExpression="Recipe_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Recipe_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="rb_Recipe_name" runat="server" Text='<%# Bind("Recipe_Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_Recipe_name" runat="server" ControlToValidate="rb_Recipe_name" ErrorMessage="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Recipe_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submitted by" SortExpression="Submitted_by">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Submitted_by") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_submitted_by" runat="server" Text='<%# Bind("Submitted_by") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_submitted_by" runat="server" ControlToValidate="tb_submitted_by" ErrorMessage="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Submitted_by") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ingredient #1" SortExpression="Ingredient_1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient_1") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_Ingredient1" runat="server" Text='<%# Bind("Ingredient_1") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_Ingredient1" runat="server" ControlToValidate="tb_Ingredient1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ingredient_1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient #2" SortExpression="Ingredient_2" />
            <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient #3" SortExpression="Ingredient_3" />
            <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient #4" SortExpression="Ingredient_4" />
            <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient #5" SortExpression="Ingredient_5" />
            <asp:TemplateField HeaderText="Preparation" SortExpression="Preparation">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Preparation") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("Preparation") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_preparation" runat="server" ControlToValidate="tb_preparation" ErrorMessage="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Preparation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="Save" ShowCancelButton="False" >
            <ControlStyle Height="32px" Width="65px" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server"></asp:Label>
    <br />
    <br />
</asp:Content>


