using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Manage_admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Admin values ('" + txtname.Text + "','" + txtpassword.Text+ "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind(); 
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script lamguage='javascript'>alert('ManageAdmin Added...!!!')</script>");
       
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = " Update Admin set adusername='"+txtname.Text+"',adpassword='"+txtpassword.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();      
        ClientScript.RegisterStartupScript(Page.GetType(), "update", "<script language='javascript'>alert('Admin update successfully...!!')</script>");
    
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
       
        cn.Open();
        cmd.CommandText = "delete from Admin where adusername='"+txtname.Text+"' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();     
        ClientScript.RegisterStartupScript(Page.GetType(), "delete", "<script language='javascript'>alert('Services delete successfully...!!')</script>");
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {        
      
            txtname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtpassword.Text = GridView1.SelectedRow.Cells[2].Text;
       
    }
}