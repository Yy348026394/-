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
        DataSet dsdid = SqlHelper.ExecuteforDataSet("select did,dname from doctors");
        ddldid.DataSource = dsdid;
        ddldid.DataTextField = "dname";
        ddldid.DataValueField = "did";
        ddldid.DataBind();
        ddldid.Items.Insert(0, new ListItem("---全部---", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定
    /// </summary>
    private void bind()
    {       
        string where = " where flag='审核通过' ";

        if (txt_lname.Text != "")
        {
            where += " and lname like '%" + txt_lname.Text + "%' ";
        }

        if (ddldid.SelectedValue!= "")
        {
            where += " and a.did='" + ddldid.SelectedValue + "' ";
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

}

