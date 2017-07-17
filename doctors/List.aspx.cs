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

public partial class doctors_List : System.Web.UI.Page
{
       protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        DataSet dspid = SqlHelper.ExecuteforDataSet("select pid,pname from parts");
        ddlpid.DataSource = dspid;
        ddlpid.DataTextField = "pname";
        ddlpid.DataValueField = "pid";
        ddlpid.DataBind();
        ddlpid.Items.Insert(0, new ListItem("---全部---", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (txt_did.Text != "")
        {
            where += " and did like '%" + txt_did.Text + "%' ";
        }

        if (txt_dname.Text != "")
        {
            where += " and dname like '%" + txt_dname.Text + "%' ";
        }

        if (ddlpid.SelectedValue!= "")
        {
            where += " and a.pid=" + ddlpid.SelectedValue + "";
        }

        if (ddljob.SelectedValue!= "")
        {
            where += " and job='" + ddljob.SelectedValue + "' ";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,b.pname from doctors a  left join parts b on a.pid=b.pid " + where + " order by did desc");
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
        string strSql = string.Format("delete from  doctors where did='{0}'", lk.CommandName);

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(strSql);

        //重新绑定数据源
        bind();
    }

}

