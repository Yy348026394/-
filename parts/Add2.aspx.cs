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

public partial class records_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["u"] = Request.UrlReferrer.ToString();


        }
    }

    /// <summary>
    /// 添加
    /// </summary>
    /// <returns></returns>
    protected void btnSave_Click(object sender, EventArgs e)
    {    
        
       //设置添加sql
       string strSql=String.Format(@"insert into records(lname,rdate,memo,did,atime,flag)
                                values ('{0}','{1}','{2}','{3}','{4}','{5}')",
                                Session["aid"].ToString(),txt_rdate.Text,txt_memo.Text,Request.QueryString["did"],DateTime.Now,"等待审核");
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "提交成功，请等待医生的审核!", "../records/list.aspx");
    }

}

