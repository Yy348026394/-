using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// 添加
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from users where lname='" + txt_lname.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该用户名已存在，请重新输入！");
            return;
        }


        //设置添加sql
        string strSql = String.Format(@"insert into users(lname,pwd,unamer,sex,birth,tel,address,rtime)
                                values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",
                                 txt_lname.Text, txt_pwd.Text, txt_unamer.Text, rtsex.SelectedValue, txt_birth.Text, txt_tel.Text, txt_address.Text, DateTime.Now);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.RunScript(this, "alert('恭喜您注册成功，请登录！'); var index = parent.layer.getFrameIndex(window.name); parent.layer.close(index); ");
    }
}