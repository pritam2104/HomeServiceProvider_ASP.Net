using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_enquiry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into enquiry values('" + txtname.Text + "','" + txtemailid.Text + "','" + drpcity.Text + "','" + txtsubject.Text + "','" + txtmessage.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('enquiry submitted...!!!')</script>");
        Clear();
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Clear();
    }
    void Clear()
    {
        txtname.Text = "";
        txtemailid.Text = "";
        drpcity.Text = "";
        txtsubject.Text = "";
        txtmessage.Text = "";
    }
}