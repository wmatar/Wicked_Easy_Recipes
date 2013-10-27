<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br />
        <br />
        <table class="Contact_tbl">
            <tr>
                <td>Your Email Address:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    <asp:TextBox ID="TextBox1" runat="server" Width="209px" Height="27px" BorderStyle="Inset"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Your Message:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="130px" Width="399px" TextMode="MultiLine" 
                        BorderStyle="Inset"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="snd_cell" colspan="2">
                    <br />
                    <br />
                    <asp:Button ID="btn_Send" runat="server" Text="Send Message" Height="32px" Width="105px" />
                </td>
            </tr>
        </table>
        <br /><br /><br />
    </div>

</asp:Content>

