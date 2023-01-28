<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="AddQuestions.aspx.cs" Inherits="CommonEntranceTest.AddQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
        }
        .style10
        {
            width: 109px;
        }
        .style11
        {
        }
        .style12
        {
            width: 143px;
            height: 31px;
        }
        .style13
        {
            height: 31px;
        }
        .style14
        {
            width: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Label ID="Label1" runat="server" Text="Add Questions"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label>
                </td>
                <td class="style9" colspan="4">
                    <asp:TextBox ID="txt_qus" runat="server" TextMode="MultiLine" Width="300px" 
                        Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Addiitional Question</td>
                <td class="style13" colspan="3">
                    <asp:TextBox ID="txt_adqus" runat="server" TextMode="MultiLine" Width="200px" 
                        Height="50px"></asp:TextBox>
                </td>
                <td class="style13">
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label3" runat="server" Text="OptionA"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txt_opta" runat="server" Height="30px" Width="160px"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label4" runat="server" Text="OptionB"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txt_optb" runat="server" Height="30px" Width="160px"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label5" runat="server" Text="OptionC"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txt_optc" runat="server" Height="30px" Width="160px"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label6" runat="server" Text="OptionD"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txt_optd" runat="server" Height="30px" Width="160px"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label7" runat="server" Text="Correct Answer"></asp:Label>
                </td>
                <td class="style14">
                    <asp:DropDownList ID="dd" runat="server" Height="30px" Width="160px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="OptionA">OptionA</asp:ListItem>
                        <asp:ListItem Value="OptionB">OptionB</asp:ListItem>
                        <asp:ListItem Value="OptionC">OptionC</asp:ListItem>
                        <asp:ListItem Value="OptionD">OptionD</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Button ID="Button1" runat="server" Text="ADD" Width="160px" 
                        onclick="Button1_Click1" style="height: 26px" Height="30px" />
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11" colspan="5">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style11" colspan="5">
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
        <br />
        <br />
    </div>
</asp:Content>
