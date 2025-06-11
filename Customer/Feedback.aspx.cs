using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/Star.gif";
        ImageButton3.ImageUrl = "~/Image/Star.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblrating.Text = "1 star";
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/Star.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblrating.Text = "2 star";
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblrating.Text = "3 star";
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton4.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblrating.Text = "4 star";
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton4.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton5.ImageUrl = "~/Image/FilledStar.gif";
        lblrating.Text = "5 star";
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into Feedback values('"+txtname.Text+"',"+txtcontactno.Text+",'"+txtemailid.Text+"','"+txtmsg.Text+"','"+lblrating.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javascript'>alert('Feedback submitted successfully..!!')</script>");
        Clear();
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        Clear();
       
    }
    void Clear()
    {
        txtmsg.Text = " ";
        txtname.Text = "";
        txtemailid.Text = "";
        txtcontactno.Text = "";
        ImageButton1.ImageUrl = "~/Image/Star.gif";
        ImageButton2.ImageUrl = "~/Image/Star.gif";
        ImageButton3.ImageUrl = "~/Image/Star.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";

    }
}