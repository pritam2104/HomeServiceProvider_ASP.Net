using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_customer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["User"].ToString();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["cat"] = btn.CommandArgument;
    }
}
