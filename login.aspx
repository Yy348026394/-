<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head runat="server">
    <title>管理登陆</title>
    <link href="css/css.css" rel="stylesheet" type="text/css">
		<style type="text/css">
            .STYLE3 {
	            font-size: 12px;
	            color: #FFFFFF;
	            text-decoration: none;
            }
            .STYLE4 {
	            color: #FFFFFF;
	            font-family: "楷体_GB2312";
	            font-size: 24px;
	            font-weight: bold;
            }
        </style>                    <script src="layer/jquery.min.js"></script>
    <script src="layer/layer.js"></script>
    <script>
        function show()
        {
            layer.open({
                type: 2,
                title: '患者注册',
                shadeClose: true,
                shade: 0.8,
                area: ['630px', '450px'],
                content: 'reg.aspx'
            });     

           
        }

    </script>
</head>
<body  class="bg">
    <form id="form1" runat="server">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tbody><tr>
				<td align="center" valign="middle">
					<table width="817" height="354" border="0" cellpadding="0" cellspacing="0" background="images/login.jpg">
						<tbody><tr>
							<td>&nbsp;
								
							</td>
							<td>
								<p align="left">
									<br>
									<br>
									<br>
									<br>
								</p>
								<table width="95%" height="14" border="0" align="left" cellpadding="0" cellspacing="0">
									<tbody><tr>
										<td>
											<span class="STYLE4">医院预约挂号管理系统</span>										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
						<tr>
							<td width="100">&nbsp;
								
							</td>
							<td height="239">
                              <table width="50%" border="0" align="left" cellspacing="3">
                                <tbody><tr>
                                  <td class="FontWit"><div align="right">登 陆 名：</div></td>
                                  <td><div align="left">
                                      <asp:TextBox ID="txt_lname" runat="server" Width="150"></asp:TextBox>
                                      </div></td>
                                </tr>
                                <tr>
                                  <td class="FontWit"><div align="right">密　　码：</div></td>
                                  <td><div align="left">
                                     <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" Width="150"></asp:TextBox>
                                 </div></td>
                                </tr>
                                <tr>
                                  <td class="FontWit"><div align="right">用户类型：</div></td>
                                  <td><div align="left">
                                     <asp:DropDownList ID="DropDownList1" runat="server" Width="150">
                                         <asp:ListItem>管理员</asp:ListItem>
                                         <asp:ListItem>医生</asp:ListItem>
                                         <asp:ListItem>患者</asp:ListItem>
                                      </asp:DropDownList>
                                  </div></td>
                                </tr>
                                <tr>
                                  <td class="FontWit"><div align="right"></div></td>
                                  <td><div align="left">
                                      <asp:Button ID="btn_Ok" runat="server" Text="登 陆" onclick="btn_Ok_Click" style="height: 26px" />
                                      &nbsp;
                                 
                                      <input id="sub_btn" type="button" value="患者注册" onclick="show();" />
                                  </div></td>
                                </tr>
                              </tbody></table>
						    </td>
						</tr>
					</tbody></table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody><tr>
							<td>
								<div align="center" class="FontWit">
									</div>
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
    </form>
</body>
</html>

