<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student2.aspx.cs" Inherits="Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        &nbsp;
        <asp:HyperLink ID="HL1" runat="server" Style="z-index: 100; left: 597px;
            position: absolute; top: 310px" Width="69px" NavigateUrl="~/Download2.aspx">资料下载</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:HyperLink ID="HL2" runat="server" Style="z-index: 101; left: 600px; position: absolute;
            top: 413px" NavigateUrl="~/SchoolWorkStudent2.aspx">作业提交</asp:HyperLink>
        <asp:HyperLink ID="HL3" runat="server" Style="z-index: 102; left: 605px; position: absolute;
            top: 515px" NavigateUrl="~/MsgBoard2.aspx">留言板</asp:HyperLink>
        &nbsp; &nbsp;&nbsp;
        <img src="images/欢迎光临.bmp" alt="" style="z-index: 105; left: 194px; width: 899px; position: absolute;
            top: 60px; height: 149px" />
        &nbsp;
        <img src="images/资料下载.bmp" alt="" style="z-index: 106; left: 458px; position: absolute;
            top: 267px" />
        <img src="images/作业提交.bmp" alt="" style="z-index: 107; left: 459px; position: absolute;
            top: 373px" />
        <img src="images/留言板1.bmp" alt="" style="z-index: 108; left: 468px; position: absolute;
            top: 487px" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 103;
            left: 849px; position: absolute; top: 516px">退出登录</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WorkResult2.aspx" Style="z-index: 109;
            left: 836px; position: absolute; top: 418px">作业成绩查询</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
