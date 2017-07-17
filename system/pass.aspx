<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pass.aspx.cs" ValidateRequest="false" Inherits="pass" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../js/validation.js" type="text/javascript"></script>
<link href="../js/validation.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>系统管理：修改密码</strong></font></td>
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
    <td  style=" text-align:right; width:30%;">原密码:</td>
        <td class="tbright"><asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox> </td>
    </tr>
    <tr>
        <td  style=" text-align:right; width:30%;">新密码:</td>
        <td class="tbright"><asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td>
    </tr>
        <tr>
        <td  style=" text-align:right; width:30%;">确认密码:</td>
        <td class="tbright"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
    </tr>

        <tr>
            <td class="tdbg"></td><td align="left">
                <asp:Button ID="Button1" runat="server" Text="提交修改" OnClick="btnSave_Click" class="inputbutton" OnClientClick="return jQuery.formValidator.PageIsValid('1');"></asp:Button>
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
     var f1 = new LiveValidation('ctl00_ContentPlaceHolder1_txt_pwd', { validMessage: '√', wait: 2000 });
     f1.add(Validate.Presence, { failureMessage: "请输入原密码！" });
     var f2 = new LiveValidation('ctl00_ContentPlaceHolder1_TextBox1', { validMessage: '√', wait: 2000 });
     f2.add(Validate.Presence, { failureMessage: "请输入新密码！" });
     var f3 = new LiveValidation('ctl00_ContentPlaceHolder1_TextBox2', { validMessage: '√', wait: 2000 });
     f3.add(Validate.Confirmation, { match: 'ctl00_ContentPlaceHolder1_TextBox1', failureMessage: "两次密码输入不一致！" });

</script>

</center>
</asp:Content>


