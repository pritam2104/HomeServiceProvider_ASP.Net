using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Category : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (catid)from category";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtid.Text = n.ToString();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(catid)from category";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtid.Text = y.ToString();
            cn.Close();
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Category values(" + txtid.Text + ",'" + txtname.Text + "','" +image1.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('category Added...!!!')</script>");

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update category set catname='"+txtname.Text+"',image='"+image1.ImageUrl+"' where catid="+txtid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert('category Updated Successfully...!!!')</script>");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "delete from category where catid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert('category Deleted Successfully...!!!')</script>");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Clear();
    }
    void Clear()
    {
        txtid.Text = "";
        txtname.Text = "";
        image1.ImageUrl = "";
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~/image/" + FileUpload1.FileName));
            image1.ImageUrl = "~/image/" + FileUpload1.FileName;
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "upload", "<script language='javascript'>alert('please select image')</script>");
        }
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        image1.ImageUrl = GridView1.SelectedRow.Cells[3].Text;
    }
}