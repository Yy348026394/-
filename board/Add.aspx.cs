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

public partial class board_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bind();
        }
    }

    /// <summary>
    /// 绑定
    /// </summary>
    private void bind()
    {
        string where = " where lname='"+Session["aid"].ToString()+"' ";

        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select * from board " + where + " order by bid desc");
        GridView1.DataBind();

    }

    /// <summary>
    /// 分页事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }


    /// <summary>
    /// 添加
    /// </summary>
    /// <returns></returns>
    protected void btnSave_Click(object sender, EventArgs e)
    {

        //设置添加sql
        string strSql = String.Format(@"insert into board(lname,title,memo,atime)
                                values ('{0}','{1}','{2}','{3}')",
                                 Session["aid"].ToString(), txt_title.Text, txt_memo.Text, DateTime.Now);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }
}

