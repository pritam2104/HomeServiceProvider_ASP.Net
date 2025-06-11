using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Configuration;



public partial class Customer_BookingDetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    ReportDocument crpt = new ReportDocument();
    DataTable dt = new DataTable();



    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;

        txtbookingdate.Text = System.DateTime.Now.ToShortDateString();
        lblusername.Text = Session["user"].ToString();

        lblseid.Text = Session["seid"].ToString();
        int seid = Convert.ToInt32(lblseid.Text);



        cn.Open();
        cmd.CommandText = "select count(bookingid) from Booking";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            lblbookingid.Text = n.ToString();
            cn.Close();
        }
        else
        {

            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(bookingid) from Booking";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            lblbookingid.Text = y.ToString();

        }
        cn.Close();
        
    }


    protected void btnconfirmbook_Click(object sender, EventArgs e)
    {

        

        if (rdcash.Checked == false && rdupi.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script type='text/javascript'>alert('please choose payment...')</script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Booking values(" + lblbookingid.Text + "," + lblseid.Text + ",'" + lblusername.Text + "','" + txtbookingdate.Text + "','" + txtpreferresdate.Text + "',@P1)";
            if (rdcash.Checked == true)
            {
                cmd.Parameters.AddWithValue ("@P1", rdcash.Text);
            }
            else
            {
                Panel1.Visible = true;
                cmd.Parameters.AddWithValue ("@P1", rdupi.Text);
                
            }
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('BookingDetails submitted...!!!')</script>");


            //Button btn = sender as Button;
            //Session["seid"] = btn.CommandArgument;
            //Response.Redirect("~/Customer/MyBooking.aspx");


        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        Session["seid"] = btn.CommandArgument;
        Response.Redirect("~/Customer/MyBooking.aspx");
    }


    protected void rdcash_CheckedChanged(object sender, EventArgs e)
    {
        if(rdcash.Checked==true)
        {
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
        }
    }

    protected void rdupi_CheckedChanged(object sender, EventArgs e)
    {
        if(rdupi.Checked==true)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }

    protected void btnprintbill_Click(object sender, EventArgs e)
    {
        cn.Open();
        //int i = 1;
        SqlDataAdapter da = new SqlDataAdapter("Select * from BookingBill where bookingid=" +lblbookingid.Text  + "", cn);
        da.Fill(ds, "BookingBill");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~/Report/PrintBill.rpt"));
        crpt.SetDataSource(ds);
        //CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "BookingBill");
        crpt.Refresh();
        cn.Close();
    }

    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}