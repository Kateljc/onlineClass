<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MsgBoard2.aspx.cs" Inherits="MsgBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div style="text-align: center">
        &nbsp; &nbsp;
        <img src="images/装饰.JPG" alt="" style="z-index: 103; left: 277px; width: 989px; position: absolute;
            top: 10px; height: 102px" />
        <img src="images/中南大学.bmp" alt="" style="z-index: 104; left: 897px; width: 269px; position: absolute;
            top: 12px; height: 99px" />
        <img src="images/留言板.bmp" alt="" style="z-index: 105; left: 667px; width: 229px; position: absolute;
            top: 12px; height: 99px" />
        &nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Message]">
        </asp:SqlDataSource>
     <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="MessageID"
            DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <ItemTemplate>
                <table border="1"  style="width: 737px; height: 365px">
                    <tr>
                        <td rowspan="1" style="width: 82px; height: 2px">
                            第<asp:Label ID="lblID" runat="server" Text='<%# Eval("MessageID") %>'></asp:Label>楼</td>
                        <td rowspan="1" style="width: 81px; height: 2px">
                            用户名：<asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label></td>
                        <td colspan="3" style="width: 263px; height: 2px">
                            主题：<asp:Label ID="lblSubject" runat="server" Text='<%# Eval("MessageSubject") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="5" rowspan="3" style="height: 142px">
                            <asp:TextBox ID="tbMessage" runat="server" Height="243px" ReadOnly="True" TextMode="MultiLine"
                                Width="721px" Text='<%# Eval("MessageContent") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td colspan="4" rowspan="1">
                            </td>
                        <td colspan="1" rowspan="1">
                            发布时间：<asp:Label ID="lblDate" runat="server" Text='<%# Eval("MessageTime") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        </asp:DataList><br />
        
 <span style="font-size: 32pt; font-family: 楷体_GB2312"> 发表新主题<br />
            <span style="font-size: 11pt">请输入您的姓名：&nbsp; &nbsp;<asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="tbName"
                    ErrorMessage="请输入您的姓名!"></asp:RequiredFieldValidator><br />
                &nbsp; &nbsp;&nbsp; 请输入主题： &nbsp; &nbsp; &nbsp;<asp:TextBox ID="tbSubject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="tbSubject"
                    ErrorMessage="请输入您要发表主题!"></asp:RequiredFieldValidator><br />
                请输入您要发表的内容： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <br />
                <asp:TextBox ID="tbMsg" runat="server" Height="217px" TextMode="MultiLine" Width="430px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvMsg" runat="server" ControlToValidate="tbMsg"
                    ErrorMessage="请输入您要发表的内容!"></asp:RequiredFieldValidator><br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Height="18px" NavigateUrl="~/Student2.aspx"
                    Style="z-index: 106; left: 179px; position: absolute; top: 94px" Width="71px">返回首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" /><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </span></span>
           
    </form>
</body>
</html>