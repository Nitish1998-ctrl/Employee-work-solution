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
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    public void datashow()
    {
        da = new SqlDataAdapter("select * from feedback", con);
        ds = new DataSet();
        da.Fill(ds, "feed");
        feedbackdetail.DataSource = ds.Tables["feed"];
        feedbackdetail.DataBind();
    }

    protected void feedbackdetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from feedback where fno=@fno", con);
        cmd.Parameters.AddWithValue("@fno", SqlDbType.Int).Value = Convert.ToInt32(feedbackdetail.DataKeys[e.RowIndex].Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        datashow();
    }
}