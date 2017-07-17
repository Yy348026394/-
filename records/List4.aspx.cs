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

public partial class records_List : System.Web.UI.Page
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
        string where = " where a.did='"+Session["aid"].ToString()+"' ";

        if (txt_lname.Text != "")
        {
            where += " and lname like '%" + txt_lname.Text + "%' ";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,b.dname from records a  left join doctors b on a.did=b.did " + where + " order by id desc");
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
    /// 搜索
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        bind();
    }
    
 
}

