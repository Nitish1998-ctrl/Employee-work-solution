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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }

    }
    SqlCommand cmd;
    
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    public void datashow()
    {

        da = new SqlDataAdapter("select a.userid,a.fname,a.lname,a.role,a.branchid,b.groupname from user_detail as a inner join groupuser_detail as b  on a.userid=b.userid", con);
        ds = new DataSet();
        da.Fill(ds, "emp");
       emplistdetail. DataSource = ds.Tables["emp"];
       emplistdetail. DataBind();

    }
    protected void emplistdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        emplistdetail.PageIndex = e.NewPageIndex;
        datashow();
    }
}