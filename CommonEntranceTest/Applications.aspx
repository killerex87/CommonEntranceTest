<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Applications.aspx.cs" Inherits="CommonEntranceTest.Applications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="width: 1350px; height: 450px; overflow: scroll">
  
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Studentid" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="Adrress" HeaderText="Adrress" 
                    SortExpression="Adrress" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="SSLC_Registration_Number" 
                    HeaderText="SSLC_Registration_Number" 
                    SortExpression="SSLC_Registration_Number" />
                <asp:BoundField DataField="SSLC_Percentage" HeaderText="SSLC_Percentage" 
                    SortExpression="SSLC_Percentage" />
                <asp:BoundField DataField="Graduation_Degree" HeaderText="Graduation_Degree" 
                    SortExpression="Graduation_Degree" />
                <asp:BoundField DataField="Graduation_Percentage" 
                    HeaderText="Graduation_Percentage" SortExpression="Graduation_Percentage" />
                <asp:BoundField DataField="Graduation_Year" HeaderText="Graduation_Year" 
                    SortExpression="Graduation_Year" />
                <asp:BoundField DataField="College_Name" HeaderText="College_Name" 
                    SortExpression="College_Name" />
                <asp:BoundField DataField="University" HeaderText="University" 
                    SortExpression="University" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" 
                    SortExpression="Phone_Number" />
                <asp:BoundField DataField="Email_Adrress" HeaderText="Email_Adrress" 
                    SortExpression="Email_Adrress" />
                <asp:BoundField DataField="Choose_Password" HeaderText="Choose_Password" 
                    SortExpression="Choose_Password" />
                <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" 
                    SortExpression="Studentid" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StdRegConnectionString %>" 
            DeleteCommand="DELETE FROM [StdReg] WHERE [Studentid] = @Studentid" 
            InsertCommand="INSERT INTO [StdReg] ([Name], [LastName], [Adrress], [City], [State], [Gender], [DOB], [SSLC_Registration_Number], [SSLC_Percentage], [Graduation_Degree], [Graduation_Percentage], [Graduation_Year], [College_Name], [University], [Phone_Number], [Email_Adrress], [Choose_Password], [Studentid]) VALUES (@Name, @LastName, @Adrress, @City, @State, @Gender, @DOB, @SSLC_Registration_Number, @SSLC_Percentage, @Graduation_Degree, @Graduation_Percentage, @Graduation_Year, @College_Name, @University, @Phone_Number, @Email_Adrress, @Choose_Password, @Studentid)" 
            SelectCommand="SELECT * FROM [StdReg]" 
            UpdateCommand="UPDATE [StdReg] SET [Name] = @Name, [LastName] = @LastName, [Adrress] = @Adrress, [City] = @City, [State] = @State, [Gender] = @Gender, [DOB] = @DOB, [SSLC_Registration_Number] = @SSLC_Registration_Number, [SSLC_Percentage] = @SSLC_Percentage, [Graduation_Degree] = @Graduation_Degree, [Graduation_Percentage] = @Graduation_Percentage, [Graduation_Year] = @Graduation_Year, [College_Name] = @College_Name, [University] = @University, [Phone_Number] = @Phone_Number, [Email_Adrress] = @Email_Adrress, [Choose_Password] = @Choose_Password WHERE [Studentid] = @Studentid">
            <DeleteParameters>
                <asp:Parameter Name="Studentid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Adrress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="SSLC_Registration_Number" Type="String" />
                <asp:Parameter Name="SSLC_Percentage" Type="String" />
                <asp:Parameter Name="Graduation_Degree" Type="String" />
                <asp:Parameter Name="Graduation_Percentage" Type="String" />
                <asp:Parameter Name="Graduation_Year" Type="String" />
                <asp:Parameter Name="College_Name" Type="String" />
                <asp:Parameter Name="University" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Email_Adrress" Type="String" />
                <asp:Parameter Name="Choose_Password" Type="String" />
                <asp:Parameter Name="Studentid" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Adrress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="SSLC_Registration_Number" Type="String" />
                <asp:Parameter Name="SSLC_Percentage" Type="String" />
                <asp:Parameter Name="Graduation_Degree" Type="String" />
                <asp:Parameter Name="Graduation_Percentage" Type="String" />
                <asp:Parameter Name="Graduation_Year" Type="String" />
                <asp:Parameter Name="College_Name" Type="String" />
                <asp:Parameter Name="University" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Email_Adrress" Type="String" />
                <asp:Parameter Name="Choose_Password" Type="String" />
                <asp:Parameter Name="Studentid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
  
        <br />
        
  
        </div>
</asp:Content>
