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

public partial class doctors_Show : System.Web.UI.Page
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
            sql="select a.*,b.pname from doctors a  left join parts b on a.pid=b.pid where did='"+ Request.QueryString["id"]+"'";
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lbldid.Text = sdr["did"].ToString();
                lblpwd.Text = sdr["pwd"].ToString();
                lbldname.Text = sdr["dname"].ToString();
                lblsex.Text = sdr["sex"].ToString();
                lblpid.Text = sdr["pname"].ToString();
                if (sdr["pic"].ToString() != "" && sdr["pic"].ToString().Length > 3)
                {
                    imgpic.ImageUrl = "../uploads/" + sdr["pic"].ToString();
                }
                lbltel.Text = sdr["tel"].ToString();
                lbljob.Text = sdr["job"].ToString();
                lblmemo.Text = sdr["memo"].ToString();
            }
  
        }
    }
}

