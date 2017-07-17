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

public partial class users_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            chushi();
        }
    }

   /// <summary>
    /// 初始化
    /// </summary>
    protected void chushi()
    {

        string strSql = string.Format("select * from users where  lname='{0}'", Request.QueryString["id"]);

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_lname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txt_pwd.Text = ds.Tables[0].Rows[0]["pwd"].ToString();
            txt_unamer.Text = ds.Tables[0].Rows[0]["unamer"].ToString();
            rtsex.SelectedValue=ds.Tables[0].Rows[0]["sex"].ToString();
            txt_birth.Text = ds.Tables[0].Rows[0]["birth"].ToString();
            txt_tel.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
    }

    /// <summary>
    /// 编辑
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   


        string strSql=String.Format(@"update users set 
                                    lname = '{0}',pwd = '{1}',unamer = '{2}',sex = '{3}',birth = '{4}',tel = '{5}',address = '{6}'
                                    where lname='{7}'",
        txt_lname.Text,txt_pwd.Text,txt_unamer.Text,rtsex.SelectedValue,txt_birth.Text,txt_tel.Text,txt_address.Text,Request.QueryString["id"]);

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }

}

