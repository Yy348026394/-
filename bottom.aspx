<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bottom.aspx.cs" Inherits="bottom" %>


<html >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table name="Trans" id="Trans" width="98%" height="24" border="0" cellpadding="0" cellspacing="0" style="BORDER-Top: #6298E1 1px solid;font-family:宋体;font-size:12px;color:#000000 ;">
  <tr>
    <td width="240" nowrap >用户身份：<span style="color:Red"><%=Session["power"].ToString() %></span></td>
    <td width="200" nowrap>登陆名：[<span style="color:Red"><%=Session["lname"].ToString() %></span>]</td>
    <td width="36" nowrap>位置：</td>
    <td width="120" nowrap>后台管理</td>
    <td align="right" nowrap id="DateTime">
      <script> 
         setInterval("DateTime.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
      </script>
    </td>
  </tr>
</table>
    </form>
</body>
</html>
