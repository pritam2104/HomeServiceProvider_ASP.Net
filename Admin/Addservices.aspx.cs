using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Addservices : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (seid)from Services";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if(n==0)
        {
            n++;
            txtseid.Text = n.ToString();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(seid)from Services";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtseid.Text = y.ToString();
            cn.Close();
        }
    }

   


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtseid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtsename.Text = GridView1.SelectedRow.Cells[4].Text;
        txtsearea.Text = GridView1.SelectedRow.Cells[5].Text;
        txtsedescription.Text = GridView1.SelectedRow.Cells[6].Text;
        txtsecost.Text = GridView1.SelectedRow.Cells[7].Text;
        txtseduration.Text=GridView1.SelectedRow.Cells[8].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[9].Text;
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile==true)
        {
            FileUpload1.SaveAs(Server.MapPath("~//Image//" + FileUpload1.FileName));
            Image1.ImageUrl = "~//Image//" + FileUpload1.FileName;
        }
    }

    protected void btnsave_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Services values (" + txtseid.Text + ",'" + drpcatname.Text + "','" + drpsubcatname.Text + "','" + txtsename.Text + "','" + txtsearea.Text + "','" + txtsedescription.Text + "','" + txtsecost.Text + "','" + txtseduration.Text + "','" + Image1.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script lamguage='javascript'>alert('Services Added...!!!')</script>");
    }

    protected void btnupdate_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = " Update Services set sename='" + txtsename.Text + "',catname='" + drpcatname.Text + "',subcatname='" + drpsubcatname.Text + "',searea='" + txtsearea.Text + "',sedescription='" + txtsedescription.Text + "',secost=" + txtsecost.Text + ",seduration='" + txtseduration.Text + "',image='" + Image1.ImageUrl + "' where seid=" + txtseid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "update", "<script language='javascript'>alert('Services update successfully...!!')</script>");
    }

    protected void btndelete_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Services where seid=" + txtseid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "delete", "<script language='javascript'>alert('Services delete successfully...!!')</script>");
    }

    protected void btncancel_Click1(object sender, EventArgs e)
    {
        Clear();
    }
    void Clear()
    {
        txtseid.Text = "";
        txtsename.Text = "";
        txtsearea.Text = "";
        txtsedescription.Text = "";
        txtsecost.Text = "";
        txtseduration.Text = "";
        Image1.ImageUrl = "";

    }
}