<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="CommonEntranceTest.Vwschedule" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function PrintPage() {
            var printContent = document.getElementById
            ('<%= pnlGridView.ClientID %>');
            var printWindow = window.open("All Records",
            "Print Panel", 'left=50000,top=50000,width=0,height=0');
            printWindow.document.write(printContent.innerHTML);
            printWindow.document.close();
            printWindow.focus();
            printWindow.print();
        }
    </script>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            color: #990000;
            text-align: center;
        }
        .style3
        {
            width: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    <table width="70%" id="pnlGridView" 
runat="server" align="center" 
class="ContentTable">
        <tr>
            <td colspan="11">
                <h1 class="style2">Government college mandya</h1>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="11"> <strong>Online Examination Schedule</strong></td>
        </tr>
        <tr>
            <td class="style3">

                &nbsp;</td>
            <td class="style3">

                &nbsp;</td>
            <td class="style3">

                &nbsp;</td>
            <td colspan="8">

                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    Height="90px" style="margin-top: 7px" Width="997px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                </td>
                </tr>
                <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td align="right" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Print" 
                        Height="34px" style="text-align: center; margin-left: 0px" Width="91px" />
                    </td>
                <td align="right" style="text-align: center">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                </tr>
                </table>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
    </form>
</body>
</html>
