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

public partial class right : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["power"].ToString() == "管理员" || Session["power"].ToString() == "超级管理员")
        {
            Response.Redirect("doctors/List.aspx");
        }
        else if (Session["power"].ToString() == "医生")
        {
            Response.Redirect("records/List4.aspx");
        }
        else if (Session["power"].ToString() == "患者")
        {
            Response.Redirect("records/List.aspx");
        }
    }
}
