<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/validation.js" type="text/javascript"></script>
<link href="js/validation.css" rel="stylesheet" type="text/css" />

<script src="My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size:12px; line-height:30px;">
                <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>用户名:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_lname" runat="server" width="200"></asp:TextBox></div><div id="txt_lnameTip" style="width:250px;display:inline;float:left;text-align:left;"></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>登录密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pwd" runat="server" width="200" TextMode="Password"></asp:TextBox></div><div id="txt_pwdTip" style="width:250px;display:inline;float:left;text-align:left;"></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>确认密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pwd2" runat="server" width="200"  TextMode="Password"></asp:TextBox></div><div id="txt_pwd2Tip" style="width:250px;display:inline;float:left;text-align:left;"></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>姓名:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_unamer" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>性别:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:RadioButtonList ID="rtsex" runat="server" RepeatDirection="Horizontal">
    <asp:ListItem Selected="True">男</asp:ListItem>
    <asp:ListItem>女</asp:ListItem>
</asp:RadioButtonList>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>出生年月:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_birth" runat="server" width="200" class="Wdate" onfocus="WdatePicker()"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>电话:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_tel" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>家庭住址:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_address" runat="server" width="200"></asp:TextBox></div>
 </td></tr>





                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
                       <asp:Button ID="btnSave" runat="server" Text="立即注册" OnClick="btnSave_Click" class="btn btn82 btn_save2" ></asp:Button>
                                      
                   </td>
                 </tr>
               </table>
        <script language="javascript" type="text/javascript">
         var flname = new LiveValidation('txt_lname', { validMessage: '√', wait: 2000 });
        flname.add(Validate.Presence, { failureMessage: "请输入用户名！" });
         var fpwd = new LiveValidation('txt_pwd', { validMessage: '√', wait: 2000 });
        fpwd.add(Validate.Presence, { failureMessage: "请输入密码！" });
         var funamer = new LiveValidation('txt_unamer', { validMessage: '√', wait: 2000 });
        funamer.add(Validate.Presence, { failureMessage: "请输入姓名！" });
         var ftel = new LiveValidation('txt_tel', { validMessage: '√', wait: 2000 });
        ftel.add(Validate.Presence, { failureMessage: "请输入电话！" });
         var faddress = new LiveValidation('txt_address', { validMessage: '√', wait: 2000 });
         faddress.add(Validate.Presence, { failureMessage: "请输入家庭住址！" });

         var f3 = new LiveValidation('txt_pwd2', { validMessage: '√', wait: 2000 });
         f3.add(Validate.Confirmation, { match: 'txt_pwd1', failureMessage: "两次密码输入不一致！" });
</script>
    </div>
    </form>
</body>
</html>
