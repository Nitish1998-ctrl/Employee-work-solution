using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }
    }
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    public void datashow()
    {
        da = new SqlDataAdapter("select * from schedule", con);
        ds = new DataSet();
        da.Fill(ds, "schedule");
       scheduledetail. DataSource = ds.Tables["schedule"];
       scheduledetail. DataBind();
    }
    protected void scheduledetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       scheduledetail. PageIndex = e.NewPageIndex;
        datashow();
    }
    protected void scheduledetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from schedule where scheduleid=@scheduleid", con);
        cmd.Parameters.Add("@scheduleid", SqlDbType.Int).Value = Convert.ToInt32(scheduledetail. DataKeys[e.RowIndex].Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        datashow();
    }
}