<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkResult.aspx.cs" Inherits="WorkResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
            BorderWidth="1px" CellPadding="4" DataKeyNames="SWSubmitID" DataSourceID="SqlDataSource1"
            Style="z-index: 100; left: 262px; position: absolute; top: 135px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <Columns>
                <asp:BoundField DataField="SWSubmitID" HeaderText="SWSubmitID" ReadOnly="True" SortExpression="SWSubmitID" />
                <asp:BoundField DataField="SWSubmitName" HeaderText="SWSubmitName" SortExpression="SWSubmitName" />
                <asp:BoundField DataField="SWSubmitTitle" HeaderText="SWSubmitTitle" SortExpression="SWSubmitTitle" />
                <asp:BoundField DataField="SWSubmitContent" HeaderText="SWSubmitContent" SortExpression="SWSubmitContent" />
                <asp:BoundField DataField="SWSubmitDate" HeaderText="SWSubmitDate" SortExpression="SWSubmitDate" />
                <asp:BoundField DataField="TeacherComment" HeaderText="TeacherComment" SortExpression="TeacherComment" />
            </Columns>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:jrjConnectionString %>" DeleteCommand="DELETE FROM [SchoolWorkSubmit] WHERE [SWSubmitID] = @original_SWSubmitID AND [SWSubmitName] = @original_SWSubmitName AND [SWSubmitTitle] = @original_SWSubmitTitle AND [SWSubmitContent] = @original_SWSubmitContent AND [SWSubmitDate] = @original_SWSubmitDate AND [TeacherComment] = @original_TeacherComment"
            InsertCommand="INSERT INTO [SchoolWorkSubmit] ([SWSubmitID], [SWSubmitName], [SWSubmitTitle], [SWSubmitContent], [SWSubmitDate], [TeacherComment]) VALUES (@SWSubmitID, @SWSubmitName, @SWSubmitTitle, @SWSubmitContent, @SWSubmitDate, @TeacherComment)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SchoolWorkSubmit]"
            UpdateCommand="UPDATE [SchoolWorkSubmit] SET [SWSubmitName] = @SWSubmitName, [SWSubmitTitle] = @SWSubmitTitle, [SWSubmitContent] = @SWSubmitContent, [SWSubmitDate] = @SWSubmitDate, [TeacherComment] = @TeacherComment WHERE [SWSubmitID] = @original_SWSubmitID AND [SWSubmitName] = @original_SWSubmitName AND [SWSubmitTitle] = @original_SWSubmitTitle AND [SWSubmitContent] = @original_SWSubmitContent AND [SWSubmitDate] = @original_SWSubmitDate AND [TeacherComment] = @original_TeacherComment">
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Student.aspx" Style="z-index: 102;
            left: 264px; position: absolute; top: 91px">返回学生首页</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
