<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleUsers.aspx.cs" Inherits="DeleUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <asp:HyperLink ID="HyperLink1" runat="server" Height="20px" NavigateUrl="~/Admin.aspx"
            Style="z-index: 100; left: 594px; position: absolute; top: 97px" Width="118px">返回管理员首页</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1"
            ForeColor="#333333" GridLines="None" Style="z-index: 102; left: 458px; position: absolute;
            top: 152px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="UserPwd" HeaderText="UserPwd" SortExpression="UserPwd" />
                <asp:BoundField DataField="UserPower" HeaderText="UserPower" SortExpression="UserPower" />
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:jrjConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @original_UserID AND [UserName] = @original_UserName AND [UserPwd] = @original_UserPwd AND [UserPower] = @original_UserPower"
            InsertCommand="INSERT INTO [Users] ([UserID], [UserName], [UserPwd], [UserPower]) VALUES (@UserID, @UserName, @UserPwd, @UserPower)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]"
            UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserPwd] = @UserPwd, [UserPower] = @UserPower WHERE [UserID] = @original_UserID AND [UserName] = @original_UserName AND [UserPwd] = @original_UserPwd AND [UserPower] = @original_UserPower">
            <DeleteParameters>
                <asp:Parameter Name="original_UserID" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_UserPwd" Type="String" />
                <asp:Parameter Name="original_UserPower" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserPwd" Type="String" />
                <asp:Parameter Name="UserPower" Type="String" />
                <asp:Parameter Name="original_UserID" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_UserPwd" Type="String" />
                <asp:Parameter Name="original_UserPower" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserPwd" Type="String" />
                <asp:Parameter Name="UserPower" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
