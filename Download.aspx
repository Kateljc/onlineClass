<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        &nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="377px" Style="z-index: 100; left: 285px;
            position: absolute; top: 64px" Width="472px"></asp:ListBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 101;
            left: 281px; position: absolute; top: 452px" Text="下载" />
        <asp:HyperLink ID="HyperLink1" runat="server" Height="6px" NavigateUrl="~/Student.aspx"
            Style="z-index: 102; left: 658px; position: absolute; top: 457px" Width="97px">返回学生首页</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 285px; position: absolute;
            top: 30px" Text="下载资料列表"></asp:Label>
    
    </div>
    </form>
</body>
</html>
