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

public partial class doctors_Add : System.Web.UI.Page
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


        }
    }

    /// <summary>
    /// 添加
    /// </summary>
    /// <returns></returns>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from doctors where did='" + txt_did.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该医生编号已存在，请重新输入！");
            return;
        }
 
                string addrpic ="";
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




       //设置添加sql
       string strSql=String.Format(@"insert into doctors(did,pwd,dname,sex,pid,pic,tel,job,memo)
                                values ('{0}','{1}','{2}','{3}',{4},'{5}','{6}','{7}','{8}')",
                                txt_did.Text,txt_pwd.Text,txt_dname.Text,rtsex.SelectedValue,ddlpid.SelectedValue,addrpic,txt_tel.Text,ddljob.SelectedValue,txt_memo.Text);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }
}

