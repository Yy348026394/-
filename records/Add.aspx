﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" ValidateRequest="false" Inherits="records_Add" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../js/validation.js" type="text/javascript"></script>
<link href="../js/validation.css" rel="stylesheet" type="text/css" />

<script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>挂号管理：添加挂号信息</strong></font></td>
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
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>挂号人:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_lname" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>就诊日期:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_rdate" runat="server" width="200" class="Wdate" onfocus="WdatePicker()"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>病情描述:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_memo" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>医生:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddldid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>挂号状态:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_flag" runat="server" width="200"></asp:TextBox></div>
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
        flname.add(Validate.Presence, { failureMessage: "请输入挂号人！" });
         var fmemo = new LiveValidation('ctl00_ContentPlaceHolder1_txt_memo', { validMessage: '√', wait: 2000 });
        fmemo.add(Validate.Presence, { failureMessage: "请输入病情描述！" });
         var fflag = new LiveValidation('ctl00_ContentPlaceHolder1_txt_flag', { validMessage: '√', wait: 2000 });
        fflag.add(Validate.Presence, { failureMessage: "请输入挂号状态！" });
</script>

</center>
</asp:Content>


