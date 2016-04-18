<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkCorrect2.aspx.cs" Inherits="WorkCorrect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SWSubmitID" DataSourceID="SqlDataSource1"
            ForeColor="#333333" GridLines="None" Style="z-index: 100; left: 206px; position: absolute;
            top: 83px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="SWSubmitID" HeaderText="SWSubmitID" ReadOnly="True" SortExpression="SWSubmitID" />
                <asp:BoundField DataField="SWSubmitName" HeaderText="SWSubmitName" SortExpression="SWSubmitName" />
                <asp:BoundField DataField="SWSubmitTitle" HeaderText="SWSubmitTitle" SortExpression="SWSubmitTitle" />
                <asp:BoundField DataField="SWSubmitContent" HeaderText="SWSubmitContent" SortExpression="SWSubmitContent" />
                <asp:BoundField DataField="SWSubmitDate" HeaderText="SWSubmitDate" SortExpression="SWSubmitDate" />
                <asp:BoundField DataField="TeacherComment" HeaderText="TeacherComment" SortExpression="TeacherComment" />
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:jrjConnectionString %>" DeleteCommand="DELETE FROM [SchoolWorkSubmit2] WHERE [SWSubmitID] = @original_SWSubmitID AND [SWSubmitName] = @original_SWSubmitName AND [SWSubmitTitle] = @original_SWSubmitTitle AND [SWSubmitContent] = @original_SWSubmitContent AND [SWSubmitDate] = @original_SWSubmitDate AND [TeacherComment] = @original_TeacherComment"
            InsertCommand="INSERT INTO [SchoolWorkSubmit2] ([SWSubmitID], [SWSubmitName], [SWSubmitTitle], [SWSubmitContent], [SWSubmitDate], [TeacherComment]) VALUES (@SWSubmitID, @SWSubmitName, @SWSubmitTitle, @SWSubmitContent, @SWSubmitDate, @TeacherComment)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SchoolWorkSubmit2]"
            UpdateCommand="UPDATE [SchoolWorkSubmit2] SET [SWSubmitName] = @SWSubmitName, [SWSubmitTitle] = @SWSubmitTitle, [SWSubmitContent] = @SWSubmitContent, [SWSubmitDate] = @SWSubmitDate, [TeacherComment] = @TeacherComment WHERE [SWSubmitID] = @original_SWSubmitID AND [SWSubmitName] = @original_SWSubmitName AND [SWSubmitTitle] = @original_SWSubmitTitle AND [SWSubmitContent] = @original_SWSubmitContent AND [SWSubmitDate] = @original_SWSubmitDate AND [TeacherComment] = @original_TeacherComment">
            <DeleteParameters>
                <asp:Parameter Name="original_SWSubmitID" Type="Int32" />
                <asp:Parameter Name="original_SWSubmitName" Type="String" />
                <asp:Parameter Name="original_SWSubmitTitle" Type="String" />
                <asp:Parameter Name="original_SWSubmitContent" Type="String" />
                <asp:Parameter Name="original_SWSubmitDate" Type="DateTime" />
                <asp:Parameter Name="original_TeacherComment" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="SWSubmitName" Type="String" />
                <asp:Parameter Name="SWSubmitTitle" Type="String" />
                <asp:Parameter Name="SWSubmitContent" Type="String" />
                <asp:Parameter Name="SWSubmitDate" Type="DateTime" />
                <asp:Parameter Name="TeacherComment" Type="String" />
                <asp:Parameter Name="original_SWSubmitID" Type="Int32" />
                <asp:Parameter Name="original_SWSubmitName" Type="String" />
                <asp:Parameter Name="original_SWSubmitTitle" Type="String" />
                <asp:Parameter Name="original_SWSubmitContent" Type="String" />
                <asp:Parameter Name="original_SWSubmitDate" Type="DateTime" />
                <asp:Parameter Name="original_TeacherComment" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="SWSubmitID" Type="Int32" />
                <asp:Parameter Name="SWSubmitName" Type="String" />
                <asp:Parameter Name="SWSubmitTitle" Type="String" />
                <asp:Parameter Name="SWSubmitContent" Type="String" />
                <asp:Parameter Name="SWSubmitDate" Type="DateTime" />
                <asp:Parameter Name="TeacherComment" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Teacher2.aspx" Style="z-index: 102;
            left: 208px; position: absolute; top: 49px">返回教师首页</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
