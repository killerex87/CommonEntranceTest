<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="EditQuestion.aspx.cs" Inherits="CommonEntranceTest.EditQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Sl_no" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        GridLines="None" Width="1086px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Sl_no" HeaderText="Sl_no" ReadOnly="True" 
                SortExpression="Sl_no" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" />
            <asp:BoundField DataField="ad_question" HeaderText="ad_question" 
                SortExpression="ad_question" />
            <asp:BoundField DataField="OptionA" HeaderText="OptionA" 
                SortExpression="OptionA" />
            <asp:BoundField DataField="OptionB" HeaderText="OptionB" 
                SortExpression="OptionB" />
            <asp:BoundField DataField="OptionC" HeaderText="OptionC" 
                SortExpression="OptionC" />
            <asp:BoundField DataField="OptionD" HeaderText="OptionD" 
                SortExpression="OptionD" />
            <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" 
                SortExpression="CorrectAnswer" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:StdRegConnectionString %>" 
        DeleteCommand="DELETE FROM [Questions] WHERE [Sl_no] = @Sl_no" 
        InsertCommand="INSERT INTO [Questions] ([Sl_no], [question], [ad_question], [OptionA], [OptionB], [OptionC], [OptionD], [CorrectAnswer]) VALUES (@Sl_no, @question, @ad_question, @OptionA, @OptionB, @OptionC, @OptionD, @CorrectAnswer)" 
        SelectCommand="SELECT * FROM [Questions]" 
        UpdateCommand="UPDATE [Questions] SET [question] = @question, [ad_question] = @ad_question, [OptionA] = @OptionA, [OptionB] = @OptionB, [OptionC] = @OptionC, [OptionD] = @OptionD, [CorrectAnswer] = @CorrectAnswer WHERE [Sl_no] = @Sl_no">
        <DeleteParameters>
            <asp:Parameter Name="Sl_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sl_no" Type="Int32" />
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="ad_question" Type="String" />
            <asp:Parameter Name="OptionA" Type="String" />
            <asp:Parameter Name="OptionB" Type="String" />
            <asp:Parameter Name="OptionC" Type="String" />
            <asp:Parameter Name="OptionD" Type="String" />
            <asp:Parameter Name="CorrectAnswer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="ad_question" Type="String" />
            <asp:Parameter Name="OptionA" Type="String" />
            <asp:Parameter Name="OptionB" Type="String" />
            <asp:Parameter Name="OptionC" Type="String" />
            <asp:Parameter Name="OptionD" Type="String" />
            <asp:Parameter Name="CorrectAnswer" Type="String" />
            <asp:Parameter Name="Sl_no" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:StdRegConnectionString %>" 
        DeleteCommand="DELETE FROM [Questions] WHERE [Sl_no] = @original_Sl_no AND [Questions] = @original_Questions AND [AdditionalQuestion] = @original_AdditionalQuestion AND [OptionA] = @original_OptionA AND [OptionB] = @original_OptionB AND [OptionC] = @original_OptionC AND [OptionD] = @original_OptionD AND [CorrectOption] = @original_CorrectOption" 
        InsertCommand="INSERT INTO [Questions] ([Sl_no], [Questions], [AdditionalQuestion], [OptionA], [OptionB], [OptionC], [OptionD], [CorrectOption]) VALUES (@Sl_no, @Questions, @AdditionalQuestion, @OptionA, @OptionB, @OptionC, @OptionD, @CorrectOption)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Questions]" 
        UpdateCommand="UPDATE [Questions] SET [Questions] = @Questions, [AdditionalQuestion] = @AdditionalQuestion, [OptionA] = @OptionA, [OptionB] = @OptionB, [OptionC] = @OptionC, [OptionD] = @OptionD, [CorrectOption] = @CorrectOption WHERE [Sl_no] = @original_Sl_no AND [Questions] = @original_Questions AND [AdditionalQuestion] = @original_AdditionalQuestion AND [OptionA] = @original_OptionA AND [OptionB] = @original_OptionB AND [OptionC] = @original_OptionC AND [OptionD] = @original_OptionD AND [CorrectOption] = @original_CorrectOption">
        <DeleteParameters>
            <asp:Parameter Name="original_Sl_no" Type="String" />
            <asp:Parameter Name="original_Questions" Type="String" />
            <asp:Parameter Name="original_AdditionalQuestion" Type="String" />
            <asp:Parameter Name="original_OptionA" Type="String" />
            <asp:Parameter Name="original_OptionB" Type="String" />
            <asp:Parameter Name="original_OptionC" Type="String" />
            <asp:Parameter Name="original_OptionD" Type="String" />
            <asp:Parameter Name="original_CorrectOption" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sl_no" Type="String" />
            <asp:Parameter Name="Questions" Type="String" />
            <asp:Parameter Name="AdditionalQuestion" Type="String" />
            <asp:Parameter Name="OptionA" Type="String" />
            <asp:Parameter Name="OptionB" Type="String" />
            <asp:Parameter Name="OptionC" Type="String" />
            <asp:Parameter Name="OptionD" Type="String" />
            <asp:Parameter Name="CorrectOption" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Questions" Type="String" />
            <asp:Parameter Name="AdditionalQuestion" Type="String" />
            <asp:Parameter Name="OptionA" Type="String" />
            <asp:Parameter Name="OptionB" Type="String" />
            <asp:Parameter Name="OptionC" Type="String" />
            <asp:Parameter Name="OptionD" Type="String" />
            <asp:Parameter Name="CorrectOption" Type="String" />
            <asp:Parameter Name="original_Sl_no" Type="String" />
            <asp:Parameter Name="original_Questions" Type="String" />
            <asp:Parameter Name="original_AdditionalQuestion" Type="String" />
            <asp:Parameter Name="original_OptionA" Type="String" />
            <asp:Parameter Name="original_OptionB" Type="String" />
            <asp:Parameter Name="original_OptionC" Type="String" />
            <asp:Parameter Name="original_OptionD" Type="String" />
            <asp:Parameter Name="original_CorrectOption" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
