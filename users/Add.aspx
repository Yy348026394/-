<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" ValidateRequest="false" Inherits="users_Add" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../js/validation.js" type="text/javascript"></script>
<link href="../js/validation.css" rel="stylesheet" type="text/css" />

<script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>患者管理：添加患者信息</strong></font></td>
  </tr>
</tbody></table>
  <center>
    <br>
	<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  
  <tbody><tr>
    <td height="24" nowrap="" bgcolor="#EBF2F9"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="editProduct" idth="100%">

      <tbody><tr>
        <td width="120" height="20" align="right">&nbsp;</td>
        <td><div align="left"></div></td>
      </tr>
      <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>用户名:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_lname" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pwd" runat="server" width="200"></asp:TextBox></div>
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
            <td class="tdbg"></td><td align="left">
                <asp:Button ID="Button1" runat="server" Text="保存" OnClick="btnSave_Click" class="inputbutton" ></asp:Button>
                <input id="Button2" type="button"  onclick="location.href = 'List.aspx';"  class="inputbutton" value="取消" />
            </td>
        </tr>
      <tr>
        <td height="20" align="right">&nbsp;</td>
        <td valign="bottom"><div align="left"></div></td>
      </tr>
    </tbody></table></td>
  </tr>  
</tbody></table>
 <script language="javascript" type="text/javascript">
         var flname = new LiveValidation('ctl00_ContentPlaceHolder1_txt_lname', { validMessage: '√', wait: 2000 });
        flname.add(Validate.Presence, { failureMessage: "请输入用户名！" });
         var fpwd = new LiveValidation('ctl00_ContentPlaceHolder1_txt_pwd', { validMessage: '√', wait: 2000 });
        fpwd.add(Validate.Presence, { failureMessage: "请输入密码！" });
         var funamer = new LiveValidation('ctl00_ContentPlaceHolder1_txt_unamer', { validMessage: '√', wait: 2000 });
        funamer.add(Validate.Presence, { failureMessage: "请输入姓名！" });
         var ftel = new LiveValidation('ctl00_ContentPlaceHolder1_txt_tel', { validMessage: '√', wait: 2000 });
        ftel.add(Validate.Presence, { failureMessage: "请输入电话！" });
         var faddress = new LiveValidation('ctl00_ContentPlaceHolder1_txt_address', { validMessage: '√', wait: 2000 });
        faddress.add(Validate.Presence, { failureMessage: "请输入家庭住址！" });
</script>

</center>
</asp:Content>


