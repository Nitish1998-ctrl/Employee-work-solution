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
    public void datashow()
    {
        da = new SqlDataAdapter("select * from branch_detail order by branchid desc", con);
        ds = new DataSet();
        da.Fill(ds);
        branchdetail. DataSource = ds.Tables[0];
        branchdetail. DataBind();
    }
    protected void branchdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        branchdetail.PageIndex = e.NewPageIndex;
        datashow();
    }
    protected void branchdetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from branch_detail where branchid=@branchid", con);
        cmd.Parameters.Add("@branchid", SqlDbType.Int).Value = Convert.ToInt32(branchdetail.DataKeys[e.RowIndex].Value );
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        branchdetail.EditIndex = -1;
        datashow();
    }
}