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
        
           da=new SqlDataAdapter  ("select a.userid,a.groupname,b.userid,b.fname from groupuser_detail as a inner join user_detail as b on a.userid=b.userid",con);
            ds=new DataSet ();
            da.Fill(ds,"g");
            gruopdetail.DataSource = ds.Tables["g"];
            gruopdetail.DataBind();
        
    }
    protected void gruopdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       gruopdetail. PageIndex = e.NewPageIndex;
        datashow();
    }
}