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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// 登陆
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
         string err = "";

        //判断输入
        if (txt_lname.Text == "")
        {
            err += "用户名不能为空!";
        }

        if (txt_pwd.Text == "")
        {
            err += "密码不能为空!";
        }

        //验证输入，如果不合法就弹出相应提示，并返回
        if (err != "")
        {
            MessageBox.Show(this, err);
            return;
        }

        DataSet ds = null;

        if(DropDownList1.SelectedValue=="管理员")
        {
            ds = SqlHelper.ExecuteforDataSet("select * from admin where lname='" + txt_lname.Text + "' and pwd='" + txt_pwd.Text + "'");
        }
        else if (DropDownList1.SelectedValue == "医生")
        {
            ds = SqlHelper.ExecuteforDataSet("select * from doctors where did='" + txt_lname.Text + "' and pwd='" + txt_pwd.Text + "'");
        }
        else if (DropDownList1.SelectedValue == "患者")
        {
            ds = SqlHelper.ExecuteforDataSet("select * from users where lname='" + txt_lname.Text + "' and pwd='" + txt_pwd.Text + "'");
        }

        //判断用户是否存在
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];

            //把用户信息存入到Session
            if (DropDownList1.SelectedValue == "管理员")
            {
                Session["aid"] = dr["aid"].ToString();
                Session["lname"] = dr["lname"].ToString();
                Session["power"] =dr["flag"].ToString()=="1"?"超级管理员": "管理员";
            }
            else if (DropDownList1.SelectedValue == "医生")
            {
                Session["aid"] = dr["did"].ToString();
                Session["lname"] = dr["dname"].ToString();
                Session["power"] = "医生";
            }
            else if (DropDownList1.SelectedValue == "患者")
            {
                Session["aid"] = dr["lname"].ToString();
                Session["lname"] = dr["unamer"].ToString();
                Session["power"] = "患者";
            }
   

            //跳转到后台
            Response.Redirect("index.html");
        }
        else
        {
            MessageBox.Show(this, "用户名或密码错误，请重试!");
            return;
        }
    }


}

