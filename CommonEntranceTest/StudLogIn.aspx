<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="StudLogIn.aspx.cs" Inherits="CommonEntranceTest.StudLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style9
    {
        width: 181px;
    }
    .style10
    {
        width: 112px;
    }
    .style11
    {
        width: 112px;
        height: 46px;
    }
    .style12
    {
        width: 181px;
        height: 46px;
    }
    .style13
    {
        height: 46px;
    }
        .style14
        {
            width: 166px;
        }
        .style15
        {
            width: 166px;
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    
        <table style="width: 100%; height: 130px;">
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    <asp:Label ID="Label1" runat="server" Text="Candidate Id"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="160px"></asp:TextBox>
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password" 
                        Width="160px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="Log In" 
                        Width="160px" onclick="Button1_Click1" />
                    <br />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/StdForgetPassword.aspx">Forget password</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>
