<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" ValidateRequest="false" Inherits="board_Add" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/validation.js" type="text/javascript"></script>
<link href="../js/validation.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>发表留言</strong></font></td>
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
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>主题:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_title" runat="server" width="200"></asp:TextBox></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>内容:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_memo" runat="server" width="292px" Height="74px" TextMode="MultiLine"></asp:TextBox></div>
 </td></tr>




        <tr>
            <td class="tdbg"></td><td align="left">
                <asp:Button ID="Button1" runat="server" Text="发表留言" OnClick="btnSave_Click" class="inputbutton" ></asp:Button>
            </td>
        </tr>
      <tr>
        <td height="20" align="right" colspan="2"><div align="left">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" GridLines="None" onpageindexchanging="GridView1_PageIndexChanging" Width="100%">
                <RowStyle Height="25px" HorizontalAlign="Center" />
                <Columns>
        
                    <asp:TemplateField >
                        <ItemTemplate>
                            <table class="auto-style1" width="100%">
                        <tr>
                            <td rowspan="3" width="100" align="center" valign="middle">
                                
                            <%#Eval("lname") %>
                            </td>
                            <td align="left" width="60%">留言主题：<%#Eval("title") %></td>
                            <td align="right">留言时间：<%#Eval("atime") %></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("memo") %></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" style="color:red"><%#Eval("anmemo").ToString()==""?"暂无回复":"管理员回复："+Eval("anmemo").ToString() %></td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            
            </asp:GridView>
            </div></td>
      </tr>
    </tbody></table></td>
  </tr>  
</tbody></table>
 <script language="javascript" type="text/javascript">
    
         var ftitle = new LiveValidation('ctl00_ContentPlaceHolder1_txt_title', { validMessage: '√', wait: 2000 });
        ftitle.add(Validate.Presence, { failureMessage: "请输入主题！" });
         var fmemo = new LiveValidation('ctl00_ContentPlaceHolder1_txt_memo', { validMessage: '√', wait: 2000 });
        fmemo.add(Validate.Presence, { failureMessage: "请输入内容！" });

</script>

</center>
</asp:Content>


