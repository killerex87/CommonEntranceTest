<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="CreateSchedule.aspx.cs" Inherits="CommonEntranceTest.CreateShedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            width: 197px;
        }
        .style10
        {
            width: 71px;
        }
        .style11
        {
            width: 79px;
        }
        .style12
        {
            width: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label1" runat="server" Text="Select ID"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Studentid" 
                        DataValueField="Studentid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:StdRegConnectionString %>" 
                        SelectCommand="SELECT [Studentid] FROM [StdReg]"></asp:SqlDataSource>
                </td>
                <td class="style11">
                    <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox1" runat="server" Width="126px" Height="30px" 
                        TextMode="Date"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label2" runat="server" Text="Select ID"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="Studentid" 
                        DataValueField="Studentid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:StdRegConnectionString %>" 
                        SelectCommand="SELECT [Studentid] FROM [StdReg]"></asp:SqlDataSource>
                </td>
                <td class="style11">
                    <asp:Label ID="Label4" runat="server" Text="Time from :"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Time" 
                        Width="126px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:Label ID="Label5" runat="server" Text="Time to :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" TextMode="Time" 
                        Width="126px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        Height="30px" Width="126px" />
                </td>
                <td class="style10">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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
        <br />
        <br />
    </div>
</asp:Content>
