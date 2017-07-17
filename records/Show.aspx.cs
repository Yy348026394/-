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

public partial class records_Show : System.Web.UI.Page
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
            sql="select a.*,b.dname from records a  left join doctors b on a.did=b.did where id="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblid.Text = sdr["id"].ToString();
                lbllname.Text = sdr["lname"].ToString();
                lblrdate.Text = sdr["rdate"].ToString();
                lblmemo.Text = sdr["memo"].ToString();
                lbldid.Text = sdr["dname"].ToString();
                lblatime.Text = sdr["atime"].ToString();
                lblflag.Text = sdr["flag"].ToString();
            }
  
        }
    }
}

