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

public partial class doctors_Edit : System.Web.UI.Page
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
        DataSet dspid = SqlHelper.ExecuteforDataSet("select pid,pname from parts");
            ddlpid.DataSource = dspid;
            ddlpid.DataTextField = "pname";
            ddlpid.DataValueField = "pid";
            ddlpid.DataBind();


        string strSql = string.Format("select * from doctors where  did='{0}'", Request.QueryString["id"]);

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_did.Text = ds.Tables[0].Rows[0]["did"].ToString();
            txt_pwd.Text = ds.Tables[0].Rows[0]["pwd"].ToString();
            txt_dname.Text = ds.Tables[0].Rows[0]["dname"].ToString();
            rtsex.SelectedValue=ds.Tables[0].Rows[0]["sex"].ToString();
            ddlpid.SelectedValue=ds.Tables[0].Rows[0]["pid"].ToString();
            Labelpic.Text = ds.Tables[0].Rows[0]["pic"].ToString();
            if (Labelpic.Text != "" && Labelpic.Text.Length > 3)
            {
               Imagepic.ImageUrl = "../uploads/" + Labelpic.Text;
               Imagepic.Visible = true;
             }
            txt_tel.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            ddljob.SelectedValue=ds.Tables[0].Rows[0]["job"].ToString();
            txt_memo.Text = ds.Tables[0].Rows[0]["memo"].ToString();
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
        string addrpic = Labelpic.Text;
        if (fppic.HasFile)
        {
            string name = this.fppic.PostedFile.FileName;
            int i = name.LastIndexOf('.');
            string extname = name.Substring(i);
            string filename = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            string path =  filename + extname;
            string savePath = Server.MapPath(@"..\uploads\" + filename + extname);
            fppic.PostedFile.SaveAs(savePath);
            addrpic = path;
        }


        string strSql=String.Format(@"update doctors set 
                                    did = '{0}',pwd = '{1}',dname = '{2}',sex = '{3}',pid = {4},pic = '{5}',tel = '{6}',job = '{7}',memo = '{8}'
                                    where did='{9}'",
        txt_did.Text,txt_pwd.Text,txt_dname.Text,rtsex.SelectedValue,ddlpid.SelectedValue,addrpic,txt_tel.Text,ddljob.SelectedValue,txt_memo.Text,Request.QueryString["id"]);

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }

}

