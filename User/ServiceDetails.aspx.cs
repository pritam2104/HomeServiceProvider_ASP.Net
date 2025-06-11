using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ServiceDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["cat"] = btn.CommandArgument;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["subcat"] = btn.CommandArgument;
    }

   

    protected void Button3_Click1(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["seid"] = btn.CommandArgument;
        Response.Redirect("~/User/ServiceDetails.aspx");
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        
       
    }
}