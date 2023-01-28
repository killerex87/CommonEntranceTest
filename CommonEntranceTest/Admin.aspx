<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CommonEntranceTest.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style9
    {
        height: 38px;
    }
    .style10
    {
        width: 81px;
    }
    .style11
    {
        height: 38px;
        width: 81px;
    }
    .style12
    {
        width: 96px;
    }
    .style13
    {
        height: 38px;
        width: 96px;
    }
    .style16
    {
        width: 81px;
        height: 27px;
    }
    .style17
    {
        width: 96px;
        height: 27px;
    }
    .style19
    {
        height: 27px;
    }
    .style20
    {
        width: 81px;
        height: 28px;
    }
    .style21
    {
        width: 96px;
        height: 28px;
    }
    .style23
    {
        height: 28px;
    }
        .style24
        {
            width: 81px;
            height: 23px;
        }
        .style25
        {
            width: 96px;
            height: 23px;
        }
        .style27
        {
            height: 23px;
        }
        .style28
        {
            width: 70px;
        }
        .style29
        {
            height: 38px;
            width: 70px;
        }
        .style30
        {
            width: 70px;
            height: 28px;
        }
        .style31
        {
            width: 70px;
            height: 27px;
        }
        .style32
        {
            width: 70px;
            height: 23px;
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
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   Activate link.</td>
           </tr>
           <tr>
               <td class="style11">
                   &nbsp;</td>
               <td class="style13">
                   <asp:Button ID="Button1" runat="server" Height="34px" Text="Add New Questions" 
                       Width="176px" onclick="Button1_Click" />
               </td>
               <td class="style29">
                   &nbsp;</td>
               <td class="style9">
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="30px">
                       <asp:ListItem>Select</asp:ListItem>
                       <asp:ListItem>Enable</asp:ListItem>
                       <asp:ListItem>Disable</asp:ListItem>
                   </asp:DropDownList>
                   <asp:Button ID="Button11" runat="server" Text="Proceed for link" 
                       onclick="Button11_Click" Height="34px" Width="176px" />
               </td>
           </tr>
           <tr>
               <td class="style10">
                   <asp:Label ID="Label1" runat="server" Text="Questions"></asp:Label>
               </td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   <asp:Button ID="Button2" runat="server" Height="34px" Text="View/Edit Questions" 
                       Width="176px" onclick="Button2_Click" />
               </td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server" Visible="False">~/WebForm3.aspx</asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style20">
               </td>
               <td class="style21">
                   &nbsp;</td>
               <td class="style30">
               </td>
               <td class="style23">
                   <asp:Button ID="Button12" runat="server" Height="34px" 
                       onclick="Button12_Click1" Text="Log out" Width="174px" />
               </td>
           </tr>
           <tr>
               <td class="style16" rowspan="3">
                   <asp:Label ID="Label2" runat="server" Text="Schedule"></asp:Label>
               </td>
               <td class="style17">
                   <asp:Button ID="Button4" runat="server" Height="34px" Text="Create a schedule" 
                       Width="176px" onclick="Button4_Click" />
               </td>
               <td class="style31" rowspan="3">
               </td>
               <td class="style19" rowspan="3">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style17">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style17">
                   <asp:Button ID="Button5" runat="server" Height="34px" Text="View schedule" 
                       Width="176px" onclick="Button5_Click" />
               </td>
           </tr>
           <tr>
               <td class="style24">
                   </td>
               <td class="style25">
                   </td>
               <td class="style32">
                   </td>
               <td class="style27">
                   </td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style10" rowspan="3">
                   &nbsp;</td>
               <td class="style12">
                   <asp:Button ID="Button8" runat="server" Height="34px" 
                       PostBackUrl="~/Applications.aspx" Text="View Applications" Width="176px" />
               </td>
               <td class="style28" rowspan="3">
                   &nbsp;</td>
               <td rowspan="3">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style12">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style12">
                   <asp:Button ID="Button9" runat="server" Text="View Result" 
                       onclick="Button9_Click" Height="34px" Width="176px" />
               </td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style10">
                   &nbsp;</td>
               <td class="style12">
                   &nbsp;</td>
               <td class="style28">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
       <br />
       <br />
       <br />
   
   </div>
</asp:Content>
