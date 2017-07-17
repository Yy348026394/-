using System;
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

public partial class pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// 添加
    /// </summary>
    /// <returns></returns>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //根据用户编号和原密码得到用户信息
        SqlDataReader sdr = null;
        if (Session["power"].ToString() == "管理员" || Session["power"].ToString() == "超级管理员")
        {
            sdr = SqlHelper.ExecuteReader("select * from admin where aid=" + Session["aid"].ToString() + " and pwd='" + txt_pwd.Text + "'");
        }
        else if (Session["power"].ToString() == "医生")
        {
            sdr = SqlHelper.ExecuteReader("select * from doctors where did='" + Session["aid"].ToString() + "' and pwd='" + txt_pwd.Text + "'");
        }
        else if (Session["power"].ToString() == "患者")
        {
            sdr = SqlHelper.ExecuteReader("select * from users where lname='" + Session["aid"].ToString() + "' and pwd='" + txt_pwd.Text + "'");
        }

        //判断原密码是否正确
        if (sdr.Read())
        {
            //更新新密码
            if (Session["power"].ToString() == "管理员" || Session["power"].ToString() == "超级管理员")
            {
                SqlHelper.ExecuteNonQuery("update admin set pwd='" + TextBox1.Text + "' where aid=" + Session["aid"].ToString());
            }
            else if (Session["power"].ToString() == "医生")
            {
                SqlHelper.ExecuteNonQuery("update doctors set pwd='" + TextBox1.Text + "' where did='" + Session["aid"].ToString() + "' ");
            }
            else if (Session["power"].ToString() == "患者")
            {
                SqlHelper.ExecuteNonQuery("update users set pwd='" + TextBox1.Text + "' where lname='" + Session["aid"].ToString()+"' ");
            }
            MessageBox.Show(this, "修改成功!");

        }
        else
        {
            MessageBox.Show(this, "原密码不正确!");
        }

    }
}

