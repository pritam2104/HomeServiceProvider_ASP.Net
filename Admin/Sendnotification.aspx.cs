using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Send_notification : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HomeService\App_Data\HomeService.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    int notificationid, regid, catid, subcatid, semanid;
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        cn.Open();
        cmd.CommandText = "select count(notificationid) from Notification";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            notificationid = n;
            cn.Close();
        }
        else
        {

            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(notificationid) from  Notification";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            notificationid = y;

        }
        cn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblbid.Text = GridView1.SelectedRow.Cells[6].Text;
        lblsid.Text = GridView1.SelectedRow.Cells[7].Text;
        lblbdate.Text = GridView1.SelectedRow.Cells[9].Text;
        lblpdate.Text = GridView1.SelectedRow.Cells[10].Text;
        lblscategory.Text = GridView1.SelectedRow.Cells[1].Text;
        lblssubcategory.Text = GridView1.SelectedRow.Cells[2].Text;
        lblsarea.Text = GridView1.SelectedRow.Cells[4].Text;
        lblsname.Text = GridView1.SelectedRow.Cells[3].Text;
        lblscost.Text = GridView1.SelectedRow.Cells[5].Text;

        lblusername.Text = GridView1.SelectedRow.Cells[8].Text;

        cn.Open();
        cmd.CommandText = "select name from  Registration where username='"+ lblusername.Text + "'";
        cmd.Connection = cn;
        lblcname.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

        cn.Open();
        cmd.CommandText = "select email from Registration where username='" + lblusername.Text + "'";
        cmd.Connection = cn;
        lblemailid.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Notification values("+notificationid+ ",'" +lblbdate.Text+ "','" +lblusername.Text+"','"+drptypemsg.Text+"',"+semanid+",'"+drpsmanno.Text+"','"+txtsdeliverydate.Text+"','"+txtsdeliverytime.Text+"',"+catid+","+subcatid+",'"+lblsid.Text+"','"+lblsname.Text+"','"+lblsarea.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('Notification submitted...!!!')</script>");
       
    }
}