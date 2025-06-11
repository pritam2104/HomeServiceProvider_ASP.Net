using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_ServiceByCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["seid"] = btn.CommandArgument;
        Response.Redirect("~/Customer/BookingDetails.aspx");
    }
}