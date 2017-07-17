<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="users_Show" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>患者管理：查看患者详情</strong></font></td>
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
	<td height="25" width="20%" align="right">用户名：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lbllname" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">密码：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblpwd" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">姓名：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblunamer" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">性别：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblsex" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">出生年月：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblbirth" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">电话：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lbltel" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">家庭住址：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">注册时间：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblrtime" runat="server" Text=""></asp:Label></td>
	</tr>
	
        <tr>
            <td class="tdbg"></td><td align="left">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Button2" type="button" value="返回列表" onclick="history.go(-1);" />
            </td>
        </tr>
      <tr>
        <td height="20" align="right">&nbsp;</td>
        <td valign="bottom"><div align="left"></div></td>
      </tr>
    </tbody></table></td>
  </tr>  
</tbody></table>
</center>
</asp:Content>


