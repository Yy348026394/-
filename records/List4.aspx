<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List4.aspx.cs" Inherits="records_List" Title="" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>我收到的挂号</strong></font></td>
  </tr> 
</tbody></table>
<br>
  <center>
      <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  
  <tbody><tr>
    <td height="24" nowrap="" bgcolor="#EBF2F9" align=center>
          <strong> 挂号人:</strong><asp:TextBox ID="txt_lname" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   onclick="btnSearch_Click" />
  
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="挂号人" DataField="lname" />
            <asp:BoundField HeaderText="就诊日期" DataField="rdate" />
            <asp:BoundField HeaderText="病情描述" DataField="memo" />
            <asp:BoundField HeaderText="医生" DataField="dname" />
            <asp:BoundField HeaderText="提交时间" DataField="atime" />
            <asp:BoundField HeaderText="挂号状态" DataField="flag" />
           
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


