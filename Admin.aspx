<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <img src="images/管理员.bmp" style="z-index: 104; left: 289px; width: 800px; position: absolute;
            top: 19px; height: 155px" />
        <asp:HyperLink ID="HL1" runat="server" Style="z-index: 100; left: 651px; position: absolute;
            top: 235px" NavigateUrl="~/DeleUsers.aspx">账号管理</asp:HyperLink>
        <asp:HyperLink ID="HL3" runat="server" Style="z-index: 101; left: 642px; position: absolute;
            top: 390px" NavigateUrl="~/DeleMessage.aspx">留言板管理</asp:HyperLink>
        <asp:HyperLink ID="HL2" runat="server" Style="z-index: 102; left: 649px; position: absolute;
            top: 315px" NavigateUrl="~/DeleUpload.aspx">资料管理</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 105;
            left: 650px; position: absolute; top: 470px">退出登录</asp:HyperLink>
    </div>
    </form>
</body>
</html>
