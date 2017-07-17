<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" ValidateRequest="false" Inherits="doctors_Add" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../js/validation.js" type="text/javascript"></script>
<link href="../js/validation.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>医生管理：添加医生信息</strong></font></td>
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
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>医生编号:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_did" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>登录密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pwd" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>医生名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_dname" runat="server" width="200"></asp:TextBox></div>
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
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>所属科室:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlpid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>照片:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:FileUpload ID="fppic" runat="server" Width="250" />支持格式为：.jpg | .gif | .png
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>电话:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_tel" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>职称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddljob" runat="server" Width="200">
    <asp:ListItem>主任医师</asp:ListItem>
    <asp:ListItem>副主任医师</asp:ListItem>
    <asp:ListItem>主冶医师</asp:ListItem>
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;">个人简介:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_memo" runat="server" width="305px" Height="111px" TextMode="MultiLine"></asp:TextBox></div>
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
         var fdid = new LiveValidation('ctl00_ContentPlaceHolder1_txt_did', { validMessage: '√', wait: 2000 });
        fdid.add(Validate.Presence, { failureMessage: "请输入医生编号！" });
         var fpwd = new LiveValidation('ctl00_ContentPlaceHolder1_txt_pwd', { validMessage: '√', wait: 2000 });
        fpwd.add(Validate.Presence, { failureMessage: "请输入登录密码！" });
         var fdname = new LiveValidation('ctl00_ContentPlaceHolder1_txt_dname', { validMessage: '√', wait: 2000 });
        fdname.add(Validate.Presence, { failureMessage: "请输入医生名称！" });
         var ftel = new LiveValidation('ctl00_ContentPlaceHolder1_txt_tel', { validMessage: '√', wait: 2000 });
        ftel.add(Validate.Presence, { failureMessage: "请输入电话！" });
    
</script>

</center>
</asp:Content>


