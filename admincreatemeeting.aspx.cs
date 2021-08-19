using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       
    }
    protected void opencal_Click(object sender, ImageClickEventArgs e)
    {
       Calendar1. Visible = true;
       
    }
    
    

    SqlConnection con=new SqlConnection (ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    protected void send_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("insert into meeting_detail values (@meetingid,@mdate,@mtime,@mpurpose,@missues,@mconclusion)", con);
        cmd.Parameters.Add("@meetingid", Convert.ToString(idtxt.Text));
        cmd.Parameters.Add("@mdate", Convert.ToString(datetxt.Text));
        cmd.Parameters.Add("@mtime", Convert.ToString(timetxt.Text));
        cmd.Parameters.Add("@mpurpose", Convert.ToString(purposetxt.Text));
        cmd.Parameters.Add("@missues", Convert.ToString(issuediscussedtxt.Text));
        cmd.Parameters.Add("@mconclusion", Convert.ToString(conclusiontxt.Text));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        result.Text = "Meeting Schedule is created...";
        idtxt.Text = datetxt.Text = timetxt.Text = purposetxt.Text = issuediscussedtxt.Text = conclusiontxt.Text = "";   
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}