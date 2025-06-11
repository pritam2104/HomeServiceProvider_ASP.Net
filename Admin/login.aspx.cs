using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
       
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Clear();
    }
    void Clear()
    {
        txtuser.Text = "";
        txtpass.Text = "";
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select * From Admin Where adusername ='" + txtuser.Text  + "'and adpassword='" + txtpass.Text  + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        cn.Close();
        if (dt.Rows.Count > 0)
        {
            Response.Redirect(@"~//Admin//Home.aspx");
            ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('login successfully...!!!')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert(login faileddd...!!!)</script>");
            Clear();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();
    }
}