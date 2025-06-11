using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Complaint : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    int id,regid;
    protected void Page_Load(object sender, EventArgs e)
    {
        String name = Session["User"].ToString();


        txtname.Text = Session["user"].ToString();
        txtdate.Text = System.DateTime.Now.ToShortDateString();

        cn.Open();
        cmd.CommandText = "select count(complaintid) from Complaint";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            id= n;
            cn.Close();
        }
        else
        {

            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(complaintid) from Complaint";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            id = y;

        }
        cn.Close();

        cn.Open();
        cmd.CommandText = "select regid From Registration Where Username='" + name + "' ";
        cmd.Connection = cn;
        regid = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Complaint values("+id+ "," + regid+",'"+txtname.Text+"','"+txtdate.Text+"','"+txtsubject.Text+"','"+txtissue.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('Complaint submitted...!!!')</script>");
    }
}