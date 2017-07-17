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

public partial class users_Show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ShowInfo();
        }
    }

    //初始化
    private void ShowInfo()
    {
        if (Request.QueryString["id"] != null)
        {
            //绑定数据源
            string sql="";
            sql="select * from users where lname='"+ Request.QueryString["id"]+"'";
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lbllname.Text = sdr["lname"].ToString();
                lblpwd.Text = sdr["pwd"].ToString();
                lblunamer.Text = sdr["unamer"].ToString();
                lblsex.Text = sdr["sex"].ToString();
                lblbirth.Text = sdr["birth"].ToString();
                lbltel.Text = sdr["tel"].ToString();
                lbladdress.Text = sdr["address"].ToString();
                lblrtime.Text = sdr["rtime"].ToString();
            }
  
        }
    }
}

