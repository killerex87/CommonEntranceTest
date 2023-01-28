<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineTest_Start.Master" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="CommonEntranceTest.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 33%;
        }
        .style13
        {
            width: 162px;
        }
        .style15
        {
            width: 20%;
        }
        .style25
        {
            width: 162px;
            height: 42px;
        }
        .style27
        {
            width: 20%;
            height: 42px;
        }
        .style28
        {
            width: 33%;
            height: 42px;
        }
        .style30
        {
            width: 162px;
            height: 40px;
        }
        .style32
        {
            width: 20%;
            height: 40px;
        }
        .style33
        {
            width: 33%;
            height: 40px;
        }
        .style34
        {
            width: 40%;
        }
        .style35
        {
            width: 40%;
            height: 42px;
        }
        .style36
        {
            width: 40%;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="width: 669px"> 
    <table style="width:100%;">
        <tr>
            <td colspan="5">
                <asp:Label ID="qus" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Label ID="addqus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                <asp:RadioButton ID="rd_opta" runat="server" GroupName="Options" />
                <asp:Label ID="opta" runat="server"></asp:Label>
            </td>
            <td class="style25">
            </td>
            <td class="style27">
                <asp:RadioButton ID="rd_optb" runat="server" GroupName="Options" />
                <asp:Label ID="optb" runat="server"></asp:Label>
            </td>
            <td class="style27">
            </td>
            <td class="style28">
            </td>
        </tr>
        <tr>
            <td class="style36">
                <asp:RadioButton ID="rd_optc" runat="server" GroupName="Options" />
                <asp:Label ID="optc" runat="server"></asp:Label>
            </td>
            <td class="style30">
            </td>
            <td class="style32">
                <asp:RadioButton ID="rd_optd" runat="server" GroupName="Options" />
                <asp:Label ID="optd" runat="server"></asp:Label>
            </td>
            <td class="style32">
            </td>
            <td class="style33">
            </td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                <asp:Button ID="Button1" runat="server" Text="Previous" 
                    onclick="Button1_Click1" />
            </td>
            <td class="style13">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                <asp:Button ID="Button3" runat="server" Text="Next" onclick="Button3_Click" />
            </td>
            <td class="style8">
                <asp:Label ID="ID" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
