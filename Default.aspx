<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>登陆页面</title>
    <script language="javascript" type="text/javascript">
    function judgeloginfo()
    {
       if(document.getElementById("<%=name.ClientID %>").value==""||document.getElementById("<%=pwd.ClientID %>").value=="")
       { 
          window.alert("请输入用户名和密码");
          return false;
       }
       return true;
    }
function TABLE1_onclick() {

}

    </script>
</head>
<body style="text-align: center">
    <form id="form1" runat="server" >
    <table style="height:300px; width:300px; vertical-align:middle; margin-left:360px; margin-top:100px; z-index: 104; left: 229px; position: absolute; top: -5px;" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
      <tr><td align="center" colspan="2" style="height: 107px">
          <span style="font-size: 24pt"><span style="font-size: 16pt">
          </span></span><br />
          <br />
          <br />
          网络课程系统</td></tr>
      <tr>
         <td style="width: 7418px; height: 36px" >用户名:</td><td style="width: 796px; height: 36px"><input  type="text" runat="server" id="name" style="width: 147px"/></td>
      </tr>
      <tr>
         <td style="width: 7418px; height: 11px" >密码:</td><td style="width: 796px; height: 11px"><input  type="password" runat="server" id="pwd" style="width: 147px"/></td>
      </tr>
      <tr>
         <td  align="center" style="width: 796px"> &nbsp;
            <asp:Button text="登陆" runat="server" ID="btn1" OnClick="btn1_Click" OnClientClick="javascript:return judgeloginfo();" style="z-index: 100; left: 120px; position: absolute; top: 271px"/>
        </td>
      
      </tr>
    </table>
    </form>
</body>
</html>
