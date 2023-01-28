<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineTest.Master" AutoEventWireup="true" CodeBehind="StdOnline_Intro.aspx.cs" Inherits="CommonEntranceTest.Stdonline_intro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 135px;
        }
        .style12
        {
            width: 1003px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
        .style13
        {
            width: 1003px;
            text-align: left;
            font-weight: 700;
            font-size: x-large;
        }
        .style14
        {
            width: 1003px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #009900;
        }
        .style15
        {
            width: 1003px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style15">
                INTRODUCTION</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style15">
                Please read the instuction carefully.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                1. This exam contains 60 questions and each question will have one statement and 
                four answers.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                2. You have 60 minutes to complete this exam. </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                3. During the subsqent 60 minutes.<br />
&nbsp;&nbsp; -Read rach question carefully.<br />
&nbsp;&nbsp; -Choose one correct answer from out of the four availabel choices given under each 
                question.<br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                4. For every question for the selected option you have to submit the answer. </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                5. Note the time once the time is over you cannot able to continue the test. </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                6. If you complet the test before the 60 minutes you can end the test.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                7.
                <asp:Button ID="Button1" runat="server" BackColor="#009900" Height="30px" 
                    onclick="Button1_Click" Width="160px" />
                - This indicates the question you have answered.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="30px" Width="160px" />
                - This indicates the question you have to answer.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                8. There is no negative marks for wrong answer.
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14">
                Good luck!</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Proceed</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
