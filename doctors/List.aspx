<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="doctors_List" Title="" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  <tbody><tr>
    <td height="24" nowrap=""><font color="#FFFFFF"><img src="../Images/Explain.gif" width="18" height="18" border="0" align="absmiddle">&nbsp;<strong>医生管理</strong></font></td>
  </tr> 
</tbody></table>
<br>
  <center>
      <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#6298E1">
  
  <tbody><tr>
    <td height="24" nowrap="" bgcolor="#EBF2F9" align=center>
      <strong> 所属科室</strong><asp:DropDownList ID="ddlpid" runat="server" Width="150">
</asp:DropDownList><strong> 职称</strong><asp:DropDownList ID="ddljob" runat="server" Width="150">
    <asp:ListItem Value="">---全部---</asp:ListItem>
        <asp:ListItem>主任医师</asp:ListItem>
    <asp:ListItem>副主任医师</asp:ListItem>
    <asp:ListItem>主冶医师</asp:ListItem>
</asp:DropDownList>    <strong> 医生编号:</strong><asp:TextBox ID="txt_did" runat="server" width="150"></asp:TextBox>
<strong> 医生名称:</strong><asp:TextBox ID="txt_dname" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   onclick="btnSearch_Click" />
  
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="医生编号" DataField="did" />
            <asp:BoundField HeaderText="登录密码" DataField="pwd" />
            <asp:BoundField HeaderText="医生名称" DataField="dname" />
            <asp:BoundField HeaderText="性别" DataField="sex" />
            <asp:BoundField HeaderText="所属科室" DataField="pname" />
            <asp:TemplateField HeaderText="照片">
            <ItemTemplate>
            <img alt="" src="../uploads/<%#Eval("pic")%>" width="100"  height="120" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="电话" DataField="tel" />
            <asp:BoundField HeaderText="职称" DataField="job" />
            
            <asp:HyperLinkField   DataNavigateUrlFormatString="Show.aspx?id={0}" DataNavigateUrlFields="did" HeaderText="详细" Text="详细"  >
                <ItemStyle Width="50px" />
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFormatString="Edit.aspx?id={0}"  DataNavigateUrlFields="did" HeaderText="编辑" Text="编辑"  >                
                <ItemStyle Width="50px" />
            </asp:HyperLinkField>   
            <asp:TemplateField HeaderText="删除" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("did") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


