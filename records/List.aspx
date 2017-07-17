<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="records_List" Title="" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>我的挂号列表</strong></font></td>
  </tr> 
</tbody></table>
<br>
  <center>
      <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  
  <tbody><tr>
    <td height="24" nowrap="" bgcolor="#EBF2F9" align=center>

  
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="挂号人" DataField="lname" />
            <asp:BoundField HeaderText="就诊日期" DataField="rdate" />
            <asp:BoundField HeaderText="病情描述" DataField="memo" />
            <asp:BoundField HeaderText="医生" DataField="dname" />
            <asp:BoundField HeaderText="提交时间" DataField="atime" />
            <asp:BoundField HeaderText="挂号状态" DataField="flag" />
    
               
            <asp:TemplateField HeaderText="操作" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("id") %>' OnClick="lnk_Click" Text="取消挂号" OnClientClick='return confirm("您确定要取消此挂号么？");'></asp:LinkButton>
                </ItemTemplate>
   
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


