<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head2" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        &nbsp;
        <asp:HyperLink ID="HL1" runat="server" Height="15px" Style="z-index: 100; left: 590px;
            position: absolute; top: 271px" Width="69px" NavigateUrl="~/Upload2.aspx">资料上传</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:HyperLink ID="HL2" runat="server" Style="z-index: 101; left: 593px; position: absolute;
            top: 384px" NavigateUrl="~/SchoolWorkPublish2.aspx">作业发布</asp:HyperLink>
        <asp:HyperLink ID="HL3" runat="server" Style="z-index: 102; left: 601px; position: absolute;
            top: 492px" NavigateUrl="~/MsgBoard2.aspx">留言板</asp:HyperLink>
        &nbsp; &nbsp;&nbsp;
        <img src="images/欢迎光临.bmp" alt="" style="z-index: 105; left: 191px; width: 899px; position: absolute;
            top: 38px; height: 149px" />
        &nbsp;
        <img src="images/资料下载.bmp" alt="" style="z-index: 106; left: 458px; position: absolute;
            top: 230px" />
        <img src="images/作业提交.bmp" alt="" style="z-index: 107; left: 461px; position: absolute;
            top: 341px" />
        <img src="images/留言板1.bmp" alt="" style="z-index: 108; left: 469px; position: absolute;
            top: 463px" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 103;
            left: 783px; position: absolute; top: 492px">退出登录</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WorkCorrect2.aspx" Style="z-index: 109;
            left: 781px; position: absolute; top: 387px">作业批阅</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
