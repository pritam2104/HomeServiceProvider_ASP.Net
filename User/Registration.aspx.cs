using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    int regid;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(regid) from Registration";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtregid.Text = n.ToString();
            cn.Close();
        }
        else
        {

            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(regid) from Registration";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtregid.Text = y.ToString();

        }
        cn.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Registration values(" + txtregid.Text + ",'" + txtname.Text + "','" + drpcity.Text + "','"+txtemail.Text+"','" + txtusername.Text + "','" + txtpassword.Text + "','" + txtaddress.Text + "'," + txtcontactno.Text + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('Registration submitted...!!')</script>");
        Clear();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();

    }
    void Clear()
    {
        txtregid.Text = "";
        txtname.Text = "";
        drpcity.Text = "";
        txtemail.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";
    }

}