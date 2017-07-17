<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="users_List" Title="" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>患者管理</strong></font></td>
  </tr> 
</tbody></table>
<br>
  <center>
      <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  
  <tbody><tr>
    <td height="24" nowrap="" bgcolor="#EBF2F9" align=center>
          <strong> 用户名:</strong><asp:TextBox ID="txt_lname" runat="server" width="150"></asp:TextBox>
<strong> 姓名:</strong><asp:TextBox ID="txt_unamer" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   onclick="btnSearch_Click" />
  
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="用户名" DataField="lname" />
            <asp:BoundField HeaderText="密码" DataField="pwd" />
            <asp:BoundField HeaderText="姓名" DataField="unamer" />
            <asp:BoundField HeaderText="性别" DataField="sex" />
            <asp:BoundField HeaderText="出生年月" DataField="birth" />
            <asp:BoundField HeaderText="电话" DataField="tel" />
            <asp:BoundField HeaderText="家庭住址" DataField="address" />
            <asp:BoundField HeaderText="注册时间" DataField="rtime" />
            <asp:HyperLinkField   DataNavigateUrlFormatString="Show.aspx?id={0}" DataNavigateUrlFields="lname" HeaderText="详细" Text="详细"  >
                <ItemStyle Width="50px" />
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFormatString="Edit.aspx?id={0}"  DataNavigateUrlFields="lname" HeaderText="编辑" Text="编辑"  >                
                <ItemStyle Width="50px" />
            </asp:HyperLinkField>   
            <asp:TemplateField HeaderText="删除" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("lname") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


