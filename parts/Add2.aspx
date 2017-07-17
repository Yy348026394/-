<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add2.aspx.cs" ValidateRequest="false" Inherits="records_Add" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../js/validation.js" type="text/javascript"></script>
<link href="../js/validation.css" rel="stylesheet" type="text/css" />

<script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>填写挂号信息</strong></font></td>
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
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>就诊日期:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_rdate" runat="server" width="200" class="Wdate" onfocus="WdatePicker({minDate:'%y-%M-{%d+1}'})"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>病情描述:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_memo" runat="server" width="266px" Height="96px" TextMode="MultiLine"></asp:TextBox></div>
 </td></tr>



        <tr>
            <td class="tdbg"></td><td align="left">
                <asp:Button ID="Button1" runat="server" Text="提 交" OnClick="btnSave_Click" class="inputbutton" ></asp:Button>
                <input id="Button2" type="button"  onclick="location.href = '<%= ViewState["u"].ToString() %>';"  class="inputbutton" value="取消" />
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

         var fmemo = new LiveValidation('ctl00_ContentPlaceHolder1_txt_memo', { validMessage: '√', wait: 2000 });
        fmemo.add(Validate.Presence, { failureMessage: "请输入病情描述！" });

</script>

</center>
</asp:Content>


