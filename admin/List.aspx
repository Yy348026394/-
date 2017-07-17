<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="admin_List" Title="" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>管理员管理</strong></font></td>
  </tr> 
</tbody></table>
<br>
  <center>
      <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  
  <tbody><tr>
    <td height="24" nowrap="" bgcolor="#EBF2F9" align=center>
            
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="登录名" DataField="lname" />
            <asp:BoundField HeaderText="密码" DataField="pwd" />

            <asp:HyperLinkField DataNavigateUrlFormatString="Edit.aspx?id={0}"  DataNavigateUrlFields="aid" HeaderText="编辑" Text="编辑"  >                
                <ItemStyle Width="50px" />
            </asp:HyperLinkField>   
            <asp:TemplateField HeaderText="删除" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("aid") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Width="50px" />
            </asp:TemplateField>   
        </Columns>
        <PagerStyle HorizontalAlign="Center" />
    </asp:GridView>

    </td>
  </tr>  
</tbody></table>
<br>
<table border="0" cellpadding="0" cellspacing="1" style="width: 100%;">


</table>
</center>
</asp:Content>


