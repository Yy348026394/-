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
                DataSet dsdid = SqlHelper.ExecuteforDataSet("select did,dname from doctors");
            ddldid.DataSource = dsdid;
            ddldid.DataTextField = "dname";
            ddldid.DataValueField = "did";
            ddldid.DataBind();


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
                                txt_lname.Text,txt_rdate.Text,txt_memo.Text,ddldid.SelectedValue,DateTime.Now,txt_flag.Text);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }
}

