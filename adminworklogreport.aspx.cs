using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }

    }
    protected void workdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        workdetail.PageIndex = e.NewPageIndex;
        datashow();
    }
    public void datashow()
    {
        da = new SqlDataAdapter("select * from worklog", con);
        ds = new DataSet();
        da.Fill(ds, "work");
        workdetail.DataSource = ds.Tables["work"];
        workdetail.DataBind();
    }
    protected void workdetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from worklog where sno=@sno", con);
        cmd.Parameters.Add("@sno", SqlDbType.Int).Value = Convert.ToInt32(workdetail. DataKeys[e.RowIndex].Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        datashow();
    }
}