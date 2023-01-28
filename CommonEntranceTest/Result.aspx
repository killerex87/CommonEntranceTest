<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="CommonEntranceTest.Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 132px;
        }
        .style2
        {
            width: 217px;
        }
        .style3
        {
            width: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table >
    <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Student Id"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>

               
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Total Score"></asp:Label>
                </td>
               
            </tr></table>
        <asp:DataList ID="rlist" runat="server">
       <ItemTemplate>
        <table>
            
            <tr>
                <td class="style1">
                    <%#Eval("Std_id")%>
                </td>
                <td class="style2">
                   <%#Eval("Student_name")%>
                </td>
               
                <td class="style3">
                   <%#Eval("res")%>
                </td>
                
            </tr>
        </table>
        </ItemTemplate>
     </asp:DataList>
    </div>
    </form>
</body>
</html>
