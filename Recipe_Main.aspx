<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Recipe_Main.aspx.vb" 
    Inherits="Recipe_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    This is the Recipe_Main page (Gridview)<br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Recipe] WHERE [Recipe_ID] = @Recipe_ID" 
        InsertCommand="INSERT INTO [Recipe] ([Recipe_Name], [Submitted_by], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_by, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Recipe] WHERE ([Recipe_ID] = @Recipe_ID)" 
        UpdateCommand="UPDATE [Recipe] SET [Recipe_Name] = @Recipe_Name, [Submitted_by] = @Submitted_by, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Recipe_ID] = @Recipe_ID">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="Recipe_ID" QueryStringField="Recipe_ID" Type="Int32" />
        </SelectParameters>
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
        DataSourceID="SqlDataSource1" Height="50px" Width="682px" CssClass="Default_Detailsview">
        <Fields>
            <asp:TemplateField HeaderText="Recipe Name" SortExpression="Recipe_Name">
                <EditItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_ed_rec_name" runat="server" Text='<%# Bind("Recipe_Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_ed_rec_name" runat="server" ControlToValidate="tb_ed_rec_name" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Recipe_Name") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Recipe_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submitted by" SortExpression="Submitted_by">
                <EditItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_ed_submit_by" runat="server" OnTextChanged="tb_ed_submit_by_TextChanged" Text='<%# Bind("Submitted_by") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_ed_submit_by" runat="server" ControlToValidate="tb_ed_submit_by" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Submitted_by") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Submitted_by") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ingredient #1" SortExpression="Ingredient_1">
                <EditItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_ed_ingredient" runat="server" Text='<%# Bind("Ingredient_1") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_ed_ingredient" runat="server" ControlToValidate="tb_ed_ingredient" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient_1") %>'></asp:TextBox>
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
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tb_ed_prepare" runat="server" Text='<%# Bind("Preparation") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_ed_prepare" runat="server" ControlToValidate="tb_ed_prepare" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Preparation") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Preparation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" UpdateText="Save" ShowCancelButton="False" />
        </Fields>
    </asp:DetailsView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />


</asp:Content>

