<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineTest.Master" AutoEventWireup="true" CodeBehind="StdOnline_Welcome.aspx.cs" Inherits="CommonEntranceTest.StdWelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            width: 385px;
        }
        .style10
        {
            width: 348px;
        }
        .style11
        {
            font-size: x-large;
        }
        .style12
        {
            width: 348px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <strong><span class="style11">WELOCOME&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label1" runat="server" EnableViewState="False" 
                        CssClass="style11"></asp:Label>
                    </strong>&nbsp;<strong><asp:Label ID="Label2" runat="server" 
                        EnableViewState="False" CssClass="style11"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" EnableViewState="False" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="Button2" runat="server" Height="34px" onclick="Button2_Click" 
                        Text="View schedule" Width="174px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/StdOnline_Intro.aspx" style="font-size: large">Next</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" 
                        Text="Log Out" Width="174px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        
        <br />
        <br />
</div>
</asp:Content>
