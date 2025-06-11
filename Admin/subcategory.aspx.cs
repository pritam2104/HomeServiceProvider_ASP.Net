using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_subcategory : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
       cn.Open();
        cmd.CommandText = "select count(subcatid) from subcategory";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtsubcatid.Text = n.ToString();
            cn.Close();
        }
        else
        {

            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(subcatid) from subcategory";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtsubcatid.Text = y.ToString();
            
        }
        cn.Close();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into subcategory values(" + txtsubcatid.Text + ",'" + drpcatname.Text  + "','" + txtsubcatname.Text + "','"+Image1.ImageUrl+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('subcategory Added...!!!')</script>");
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update subcategory set subcatname='"+txtsubcatname.Text+"',catname='"+ drpcatname.Text + "',image='"+Image1.ImageUrl+"' where subcatid=" + txtsubcatid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "update", "<script language='javascript'>alert('subcategory update successfully...!!')</script>");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from subcategory where subcatid="  +txtsubcatid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "delete", "<script language='javascript'>alert('subcategory delete successfully...!!')</script>");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Clear();
    }

    void Clear()
    {
        txtsubcatid.Text = "";
        Image1.ImageUrl = "";
        txtsubcatname.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtsubcatid.Text = GridView1.SelectedRow.Cells[1].Text;
        
        txtsubcatname.Text = GridView1.SelectedRow.Cells[3].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[4].Text;
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~/image/" + FileUpload1.FileName));
            Image1.ImageUrl = "~/image/" + FileUpload1.FileName;
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "upload", "<script language='javascript'>alert('please select image')</script>");
        }



    }
}