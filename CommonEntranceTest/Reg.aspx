<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="CommonEntranceTest.Reg" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript">

    </script>
<style type="text/css">
    .style9
    {
        margin-left: 40px;
    }
    .style12
    {
        width: 168px;
        height: 31px;
    }
    .style13
    {
        height: 31px;
    }
    .style14
    {
        width: 168px;
        height: 32px;
    }
    .style15
    {
        height: 32px;
    }
    .style16
    {
        height: 46px;
        font-weight: normal;
        font-size: x-large;
        color: #FF0000;
        text-align: center;
    }
    .style17
    {
        color: #FF0000;
        height: 31px;
        text-align: center;
    }
    .style18
    {
        color: #000000;
        font-weight: normal;
    }
    .style19
    {
        color: #FF0000;
    }
    .style20
    {
        width: 204px;
        margin-left: 40px;
    }
    .style21
    {
        width: 204px;
        height: 31px;
    }
    .style22
    {
        width: 204px;
        height: 32px;
    }
    .style23
    {
        width: 125px;
        height: 30px;
        margin-left: 40px;
    }
    .style24
    {
        width: 204px;
        margin-left: 40px;
        height: 30px;
    }
    .style25
    {
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;<table style="width: 100%; height: 95px;">
    <tr>
        <td class="style16" colspan="3">
            <strong>Please provid your valid information. </strong>
        </td>
    </tr>
    <tr>
        <td class="style17" colspan="3">
            *<span class="style18">Indicates the mandatory fields.</span></td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style9" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            <asp:Label ID="Label20" runat="server"></asp:Label>
        </td>
        <td class="style20">
            <span class="style19">*</span><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_name" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_name" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style20">
            &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_lname" runat="server" Height="25px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style20">
            <span class="style19">*</span><asp:Label ID="Label3" runat="server" Text="Adrress"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_add" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txt_add" ErrorMessage="Please enter your address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style20">
            <span class="style19">*</span><asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_city" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txt_city" ErrorMessage="Please enter your city"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style23">
            </td>
        <td class="style24">
            <span class="style19">*</span><asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        </td>
        <td class="style25">
            <asp:TextBox ID="txt_state" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txt_state" ErrorMessage="Please enter your state"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style20">
            <span class="style19">*</span><asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rd_gender" runat="server" RepeatDirection="Horizontal" 
                Width="160px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="rd_gender" ErrorMessage="Please select gender"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label7" runat="server" Text="DOB"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_dob" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="txt_dob">
            </asp:CalendarExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txt_dob" ErrorMessage="Please enter your date of birth"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style22">
            <span class="style19">*</span><asp:Label ID="Label8" runat="server" Text="SSLC Registration Number"></asp:Label>
        </td>
        <td class="style15">
            <asp:TextBox ID="txt_sregnum" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txt_sregnum" 
                ErrorMessage="Please enter your SSLC registration Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label9" runat="server" Text="SSLC Percentage"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_sper" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txt_sper" ErrorMessage="Please enter your SSLC percentage"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style22">
            <span class="style19">*</span><asp:Label ID="Label10" runat="server" Text="Graduation Degree"></asp:Label>
        </td>
        <td class="style15">
            <asp:DropDownList ID="drp_gd" runat="server" Height="25px" Width="160px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>BSc </asp:ListItem>
                <asp:ListItem>BBM</asp:ListItem>
                <asp:ListItem>BA</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="drp_gd" ErrorMessage="Please select your graduation degree"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label11" runat="server" Text="Graduation Percentage"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_gp" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txt_gp" 
                ErrorMessage=" Please enter your garduation percentage"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label12" runat="server" Text="Graduation Year"></asp:Label>
        </td>
        <td class="style13">
            <asp:DropDownList ID="drp_gy" runat="server" Height="25px" Width="160px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>2014-2015</asp:ListItem>
                <asp:ListItem>2015-2016</asp:ListItem>
                <asp:ListItem>2016-2017</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="drp_gy" ErrorMessage="Please select your graduation year."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label13" runat="server" Text="College Name"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_clgname" runat="server" Height="25px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txt_clgname" ErrorMessage="Please enter your college name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label14" runat="server" Text="University"></asp:Label>
        </td>
        <td class="style13">
            <asp:DropDownList ID="drp_uni" runat="server" Height="25px" Width="160px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Manglore</asp:ListItem>
                <asp:ListItem>Mysuru</asp:ListItem>
                <asp:ListItem>Bengaluru</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="drp_uni" ErrorMessage="Please select your university"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            &nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" Text="Phone Number"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_pn" runat="server" Height="25px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label18" runat="server" Text="E-mail Address"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_email" runat="server" Height="25px" Width="160px" 
                TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label15" runat="server" Text="Choose Password"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txt_cpswd" runat="server" TextMode="Password" Height="25px" 
                Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style21">
            <span class="style19">*</span><asp:Label ID="Label16" runat="server" Text="Retype Password"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="TextBox13" runat="server" TextMode="Password" Height="25px" 
                Width="160px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox13" ControlToValidate="txt_cpswd" 
                ErrorMessage="Password mismatch please retype your password"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style20">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="160px" Height="30px" />
            <asp:Label ID="Label19" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
