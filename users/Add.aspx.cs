﻿ using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;
using System.Data.SqlClient;

public partial class users_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加
    /// </summary>
    /// <returns></returns>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from users where lname='" + txt_lname.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该用户名已存在，请重新输入！");
            return;
        }
 
        
       //设置添加sql
       string strSql=String.Format(@"insert into users(lname,pwd,unamer,sex,birth,tel,address,rtime)
                                values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",
                                txt_lname.Text,txt_pwd.Text,txt_unamer.Text,rtsex.SelectedValue,txt_birth.Text,txt_tel.Text,txt_address.Text,DateTime.Now);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }
}

