using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    SqlCommand cmd;
    SqlDataAdapter da;
    public void datashow()
    {
        da = new SqlDataAdapter("select * from meeting_detail", con);
        ds = new DataSet();
        da.Fill(ds, "meeting");
        meetingdetail.DataSource = ds.Tables["meeting"];
        meetingdetail.DataBind();

    }
    protected void meetingdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        meetingdetail.PageIndex = e.NewPageIndex;
        datashow();
    }
    protected void meetingdetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from meeting_detail where meetingid=@meetingid", con);
        cmd.Parameters.Add("@meetingid", SqlDbType.VarChar ).Value = Convert.ToString (meetingdetail.DataKeys[e.RowIndex].Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        datashow();
    }
}