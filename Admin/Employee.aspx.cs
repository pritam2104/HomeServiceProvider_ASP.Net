using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Employee : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    int smanid;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(semanid) from Serviceman";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtsmanid.Text = n.ToString();
            cn.Close();
        }
        else
        {

            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(semanid) from Serviceman";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtsmanid.Text = y.ToString();

        }
        cn.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {      
                FileUpload1.SaveAs(Server.MapPath("~/image/" + FileUpload1.FileName));
            Image6.ImageUrl = "/image/" + FileUpload1.FileName;
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "upload", "<script language='javascript'>alert('please select image')</script>");
        }
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (rdmale.Checked == false && rdfemale.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('please choose gender...!!!')</script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Serviceman values(" + txtsmanid.Text + ",'" + txtfullname.Text + "','" + txtemailid.Text + "','" + txtdob.Text + "',@P1," + txtmobno.Text + ",'" + txtaddress.Text + "'," + txtpincode.Text + ",'" + txtwhichserviceyou.Text + "','" + txtexperiencework.Text + "','" + txtquali.Text + "','" + Image6.ImageUrl + "','" + txtextra.Text + "')";
            if (rdmale.Checked == true)
            {
                cmd.Parameters.AddWithValue("@P1", rdmale.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@P1", rdfemale.Text);
            }
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('information successfull...!!!')</script>");
        }
    }
}
