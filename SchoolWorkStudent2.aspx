<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SchoolWorkStudent2.aspx.cs" Inherits="SchoolWorkStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <br />
        <span style="font-size: 24pt"><span style="font-family: 仿宋_GB2312">作业列表</span><br />
        </span>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:jrjConnectionString %>" SelectCommand="SELECT * FROM [SchoolWorkPublish]">
        </asp:SqlDataSource>
     <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="SchoolWorkID"
            DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <ItemTemplate>
                <table border="1"  style="width: 737px; height: 365px">
                    <tr>
                        <td rowspan="1" style="width: 82px; height: 2px">
                            第<asp:Label ID="lblID" runat="server" Text='<%# Eval("SchoolWorkID") %>'></asp:Label>次作业</td>
                        <td rowspan="1" style="width: 81px; height: 2px">
                            作业标题：<asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label></td>
                        <td colspan="3" style="width: 263px; height: 2px">
                            作业发布时间：<asp:Label ID="lblTime" runat="server" Text='<%# Eval("PublishTime") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="5" rowspan="3" style="height: 142px">
                            <asp:TextBox ID="tbContent" runat="server" Height="243px" ReadOnly="True" TextMode="MultiLine"
                                Width="721px" Text='<%# Eval("WorkContent") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td colspan="4" rowspan="1">
                            </td>
                        <td colspan="1" rowspan="1">
                            作业提交截止时间：<asp:Label ID="lblDeadLine" runat="server" Text='<%# Eval("DeadLine") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        </asp:DataList><br />
   <span style="font-size: 32pt; font-family: 楷体_GB2312"> <span style="font-size: 24pt;
       font-family: 华文中宋">
       <br />
       <br />
       作业提交</span><br />
            <span style="font-size: 11pt"><br />
                请输入作业题目：<asp:TextBox ID="tbTitle" runat="server" Height="17px" Width="178px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbTitle"
                    ErrorMessage="请输入作业题目" Style="z-index: 103; left: 597px; position: absolute;
                    top: 2122px"></asp:RequiredFieldValidator>
                <br />
                <br />
                请输入您要发表的内容： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <br />
                <asp:TextBox ID="tbContent" runat="server" Height="161px" TextMode="MultiLine" Width="466px"></asp:TextBox>&nbsp;
                <br />
                <asp:RequiredFieldValidator ID="rfvMsg" runat="server" ControlToValidate="tbContent"
                    ErrorMessage="请输入您要发表的内容!"></asp:RequiredFieldValidator><br />
                <br />
                请老师批阅： （学生请勿填写）&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <br />
                <asp:TextBox ID="tbComment" runat="server" Height="78px" TextMode="MultiLine" Width="451px">请老师批阅！</asp:TextBox>&nbsp;
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Height="4px" NavigateUrl="~/Student2.aspx"
                
                    Style="z-index: 102; left: 179px; position: absolute; top: 76px" Width="101px">返回学生首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
