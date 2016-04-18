<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleMessage.aspx.cs" Inherits="DeleMessage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
            GridLines="None" Style="z-index: 100; left: 2px; position: absolute; top: 85px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="MessageID" HeaderText="MessageID" InsertVisible="False"
                    ReadOnly="True" SortExpression="MessageID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="MessageSubject" HeaderText="MessageSubject" SortExpression="MessageSubject" />
                <asp:BoundField DataField="MessageContent" HeaderText="MessageContent" SortExpression="MessageContent" />
                <asp:BoundField DataField="MessageTime" HeaderText="MessageTime" SortExpression="MessageTime" />
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:jrjConnectionString %>" DeleteCommand="DELETE FROM [Message] WHERE [MessageID] = @original_MessageID AND [UserName] = @original_UserName AND [MessageSubject] = @original_MessageSubject AND [MessageContent] = @original_MessageContent AND [MessageTime] = @original_MessageTime"
            InsertCommand="INSERT INTO [Message] ([UserName], [MessageSubject], [MessageContent], [MessageTime]) VALUES (@UserName, @MessageSubject, @MessageContent, @MessageTime)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Message]"
            UpdateCommand="UPDATE [Message] SET [UserName] = @UserName, [MessageSubject] = @MessageSubject, [MessageContent] = @MessageContent, [MessageTime] = @MessageTime WHERE [MessageID] = @original_MessageID AND [UserName] = @original_UserName AND [MessageSubject] = @original_MessageSubject AND [MessageContent] = @original_MessageContent AND [MessageTime] = @original_MessageTime">
            <DeleteParameters>
                <asp:Parameter Name="original_MessageID" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_MessageSubject" Type="String" />
                <asp:Parameter Name="original_MessageContent" Type="String" />
                <asp:Parameter Name="original_MessageTime" Type="DateTime" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="MessageSubject" Type="String" />
                <asp:Parameter Name="MessageContent" Type="String" />
                <asp:Parameter Name="MessageTime" Type="DateTime" />
                <asp:Parameter Name="original_MessageID" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_MessageSubject" Type="String" />
                <asp:Parameter Name="original_MessageContent" Type="String" />
                <asp:Parameter Name="original_MessageTime" Type="DateTime" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="MessageSubject" Type="String" />
                <asp:Parameter Name="MessageContent" Type="String" />
                <asp:Parameter Name="MessageTime" Type="DateTime" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" Height="19px" NavigateUrl="~/Admin.aspx"
            Style="z-index: 102; left: 5px; position: absolute; top: 64px" Width="123px">返回管理员首页</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
