<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>
<html >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="css/CssAdmin.css" />
<script language="javascript" src="js/Admin.js"></script>
<script>
function closewin() {
   if (opener!=null && !opener.closed) {
      opener.window.newwin=null;
      opener.openbutton.disabled=false;
      opener.closebutton.disabled=true;
   }
}

var count=0;//做计数器
var limit=new Array();//用于记录当前显示的哪几个菜单
var countlimit=1;//同时打开菜单数目，可自定义

function expandIt(el) {
   obj = eval("sub" + el);
   if (obj.style.display == "none") {
      obj.style.display = "block";//显示子菜单
      if (count<countlimit) {//限制2个
         limit[count]=el;//录入数组
         count++;
      }
      else {
         eval("sub" + limit[0]).style.display = "none";
         for (i=0;i<limit.length-1;i++) {limit[i]=limit[i+1];}//数组去掉头一位，后面的往前挪一位
         limit[limit.length-1]=el;
      }
   }
   else {
      obj.style.display = "none";
      var j;
      for (i=0;i<limit.length;i++) {if (limit[i]==el) j=i;}//获取当前点击的菜单在limit数组中的位置
      for (i=j;i<limit.length-1;i++) {limit[i]=limit[i+1];}//j以后的数组全部往前挪一位
      limit[limit.length-1]=null;//删除数组最后一位
      count--;
   }
}
</script>
</head>
<body  background="Images/SysLeft_bg.gif" onmouseover="self.status='';return true">
    <form id="form1" runat="server">
    <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/SysLeft_bg_click.gif">
  <tr style="cursor: hand;">
    <td><img border="0" src="Images/title.gif"></td>
  </tr>
</table>

<% if (Session["power"] != null)
    { %>


        <% if (Session["power"].ToString() == "管理员" || Session["power"].ToString() == "超级管理员")
            { %>
          <% if (Session["power"].ToString() == "超级管理员")
              { %>
<!--  管理员开始    -->
<div id="main1" onclick=expandIt(1)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_6.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">管理员管理</td>
    </tr>
  </table>
</div>
<div id="sub1" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="admin/Add.aspx" target="mainFrame" onClick='changeAdminFlag("添加管理员")'>添加管理员</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="admin/List.aspx" target="mainFrame" onClick='changeAdminFlag("管理员列表")'>管理员列表</a></td>
    </tr>
  </table>
</div>
<!--  管理员结束    -->
<%} %>

<!--  科室开始    -->
<div id="main2" onclick=expandIt(2)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_2.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">科室管理</td>
    </tr>
  </table>
</div>
<div id="sub2" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="parts/Add.aspx" target="mainFrame" onClick='changeAdminFlag("添加科室")'>添加科室</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="parts/List.aspx" target="mainFrame" onClick='changeAdminFlag("科室列表")'>科室列表</a></td>
    </tr>
  </table>
</div>
<!--  科室结束    -->


<!--  医生开始    -->
<div id="main3" onclick=expandIt(3)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_3.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">医生管理</td>
    </tr>
  </table>
</div>
<div id="sub3" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="doctors/Add.aspx" target="mainFrame" onClick='changeAdminFlag("添加医生")'>添加医生</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="doctors/List.aspx" target="mainFrame" onClick='changeAdminFlag("医生列表")'>医生列表</a></td>
    </tr>
  </table>
</div>
<!--  医生结束    -->


<!--  患者开始    -->
<div id="main4" onclick=expandIt(4)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_4.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">患者管理</td>
    </tr>
  </table>
</div>
<div id="sub4" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="users/Add.aspx" target="mainFrame" onClick='changeAdminFlag("添加患者")'>添加患者</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="users/List.aspx" target="mainFrame" onClick='changeAdminFlag("患者列表")'>患者列表</a></td>
    </tr>
  </table>
</div>
<!--  患者结束    -->




<!--  挂号开始    -->
<div id="main6" onclick=expandIt(6)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_1.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">挂号管理</td>
    </tr>
  </table>
</div>
<div id="sub6" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="records/List2.aspx" target="mainFrame" onClick='changeAdminFlag("待审核挂号")'>待审核挂号</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="records/List3.aspx" target="mainFrame" onClick='changeAdminFlag("已审核挂号")'>已审核挂号</a></td>
    </tr>
  </table>
</div>
<!--  挂号结束    -->
<!--  留言开始    -->
<div id="main5" onclick=expandIt(5)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_5.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">留言管理</td>
    </tr>
  </table>
</div>
<div id="sub5" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">

    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="board/List.aspx" target="mainFrame" onClick='changeAdminFlag("留言列表")'>留言列表</a></td>
    </tr>
  </table>
</div>
<!--  留言结束    -->


<!--  系统管理开始    -->
<div id="main7" onclick=expandIt(7)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_7.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">系统管理</td>
    </tr>
  </table>
</div>
<div id="sub7" style="display:none">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="system/pass.aspx" target="mainFrame" onClick='changeAdminFlag("修改密码")'>修改密码</a></td>
    </tr>
  </table>
</div>
<!--  系统管理结束    -->

    <%} else if ( Session["power"].ToString()=="医生" )
            { %>
                <div id="main7" onclick=expandIt(7)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_1.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">菜单列表</td>
    </tr>
  </table>
</div>
<div id="sub7" style="display:block">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
   
          <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="records/List4.aspx" target="mainFrame" onClick='changeAdminFlag("我收到的挂号")'>我收到的挂号</a></td>
    </tr>



         <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="doctors/modi.aspx" target="mainFrame" onClick='changeAdminFlag("修改个人信息")'>修改个人信息</a></td>
    </tr>


    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="system/pass.aspx" target="mainFrame" onClick='changeAdminFlag("修改密码")'>修改密码</a></td>
    </tr>
  </table>
</div>
            <%} else if ( Session["power"].ToString()=="患者" )
            { %>
        <div id="main7" onclick=expandIt(7)>
  <table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/admin_left_1.gif">
    <tr style="cursor: hand;">
      <td width="26" ></td>
      <td class="SystemLeft">菜单列表</td>
    </tr>
  </table>
</div>
<div id="sub7" style="display:block">
  <table width="160" border="0" cellspacing="0" cellpadding="0" background="Images/SysLeft_bg_link.gif">
          <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="parts/List2.aspx" target="mainFrame" onClick='changeAdminFlag("科室列表")'>科室列表</a></td>
    </tr>

          <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="records/List.aspx" target="mainFrame" onClick='changeAdminFlag("我的挂号列表")'>我的挂号列表</a></td>
    </tr>

        <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="board/Add.aspx" target="mainFrame" onClick='changeAdminFlag("发表留言")'>发表留言</a></td>
    </tr>

         <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="users/modi.aspx" target="mainFrame" onClick='changeAdminFlag("修改个人信息")'>修改个人信息</a></td>
    </tr>


    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="system/pass.aspx" target="mainFrame" onClick='changeAdminFlag("修改密码")'>修改密码</a></td>
    </tr>
  </table>
</div>

        <%} %>
        <%} %>

 
<table width="167" height="26" border="0" cellpadding="0" cellspacing="0" background="Images/Admin_left_5.gif">
  <tr style="cursor: hand;">
    <td width="26"></td>
    <td class="SystemLeft">
        <asp:LinkButton ID="LinkButton1" runat="server"  
            OnClientClick="javascript:return confirm('您确定要退出吗');" 
            onclick="LinkButton1_Click">退出登陆</asp:LinkButton>
    </td>
  </tr>
</table>

    </form>
</body>
</html>

