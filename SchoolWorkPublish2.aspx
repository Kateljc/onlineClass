<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SchoolWorkPublish2.aspx.cs" Inherits="SchoolWorkPublish" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="font-size: 12pt; text-align: center;">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 405px; position: absolute;
            top: 58px" Text="作业次数："></asp:Label>
        <asp:TextBox ID="TextBoxID" runat="server" Style="z-index: 101; left: 513px; position: absolute;
            top: 57px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 404px; position: absolute;
            top: 96px" Text="作业标题："></asp:Label>
        <asp:TextBox ID="TextBoxTitle" runat="server" Style="z-index: 103; left: 513px; position: absolute;
            top: 95px"></asp:TextBox>
        <asp:TextBox ID="TextBoxContent" runat="server" Height="277px" Style="z-index: 104;
            left: 380px; position: absolute; top: 129px" Width="318px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label4" runat="server" Style="z-index: 105; left: 377px; position: absolute;
            top: 419px" Text="作业上传时间："></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 378px; position: absolute;
            top: 447px" Text="作业提交截止时间："></asp:Label>
        <asp:TextBox ID="TextBoxDeadLine" runat="server" Style="z-index: 107; left: 549px;
            position: absolute; top: 443px"></asp:TextBox>
        <asp:TextBox ID="TextBoxTime" runat="server" Style="z-index: 108; left: 549px; position: absolute;
            top: 416px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 109;
            left: 731px; position: absolute; top: 469px" Text="上传" />
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxID"
            ErrorMessage="请输入作业次数" Style="z-index: 110; left: 688px; position: absolute;
            top: 58px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxTitle"
            ErrorMessage="请输入作业标题" Style="z-index: 111; left: 687px; position: absolute;
            top: 96px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxContent"
            ErrorMessage="请输入作业内容" Style="z-index: 112; left: 710px; position: absolute;
            top: 389px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxTime"
            ErrorMessage="请输入作业上传时间" Style="z-index: 113; left: 709px; position: absolute;
            top: 416px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDeadLine"
            ErrorMessage="请输入作业截止时间" Style="z-index: 114; left: 709px; position: absolute;
            top: 442px"></asp:RequiredFieldValidator>
        <asp:Label ID="Label" runat="server" Style="z-index: 115; left: 798px; position: absolute;
            top: 471px"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Teacher2.aspx" Style="z-index: 117;
            left: 405px; position: absolute; top: 16px">返回教师首页</asp:HyperLink>
    </form>
</body>
</html>
