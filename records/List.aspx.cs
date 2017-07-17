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
        string where = " where a.lname='"+Session["aid"].ToString()+"' ";

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
    
    /// <summary>
    /// 删除
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //设置删除sql
        string strSql = string.Format("delete from  records where id={0}", lk.CommandName);

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(strSql);

        //重新绑定数据源
        bind();
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            string flag = DataBinder.Eval(e.Row.DataItem, "flag").ToString();
            LinkButton lk = (LinkButton)e.Row.FindControl("LinkButton1");


            if(flag!="审核通过")
            {
                lk.Visible = true;
              
            }
            else
            {
                lk.Visible = false;
            }
        }
    }
}

