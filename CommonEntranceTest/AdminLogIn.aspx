<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="AdminLogIn.aspx.cs" Inherits="CommonEntranceTest.AdminLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style12
    {
        height: 36px;
    }
    .style13
    {
        width: 173px;
    }
    .style14
    {
        height: 33px;
        width: 173px;
    }
    .style15
    {
        height: 36px;
        width: 173px;
    }
    .style16
    {
        width: 134px;
    }
    .style17
    {
        height: 33px;
        width: 134px;
    }
    .style18
    {
        height: 36px;
        width: 134px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div> 
    
        <table style="width: 100%;">
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style14">
                    <asp:Label ID="Label1" runat="server" Text="Admin Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" 
                        Width="160px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style18">
                </td>
                <td class="style15">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password" 
                        Width="160px" ontextchanged="TextBox2_TextChanged">gcm</asp:TextBox>
                </td>
                <td class="style12">
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="Log In" 
                        Width="160px" onclick="Button1_Click" />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
