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

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;

    protected void send_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("insert into branch_detail values(@branchid,@branch,@branch_phone)", con);
        cmd.Parameters.Add("@branchid", Convert.ToInt32(branchcodetxt.Text));
        cmd.Parameters.Add("@branch",branchnametxt.Text);
        cmd.Parameters.Add("@branch_phone", Convert.ToInt32(contacttxt.Text ));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        result.Visible = true;
    }
}