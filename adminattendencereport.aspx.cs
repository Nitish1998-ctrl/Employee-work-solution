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
            if(usriddropdown !=null)
            {
                SqlDataAdapter da=new SqlDataAdapter ("select userid from user_detail where role='Employee'",con);
                DataSet ds=new DataSet ();
                da.Fill(ds,"usrid");
                for (int i = 0; i <= ds.Tables["usrid"].Rows.Count - 1; i++)
                {
                    usriddropdown.Items.Add(ds.Tables["usrid"].Rows[i][0].ToString());
                }
            }
        }
    }

    public void datashow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from log_in_out where userid=" + usriddropdown.SelectedItem.ToString() + " AND at_year=" + yeardropdown.SelectedItem.ToString() + " AND at_month=" + monthdropdown.SelectedValue.ToString() + "", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "u");
        if (ds.Tables["u"].Rows.Count > 0)
        {
            attendencedetail.Visible = true;
            attendencedetail.DataSource = ds.Tables["u"];
            attendencedetail.DataBind();
            Label2.Visible = false;
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "No Details";
            attendencedetail.Visible = false;
        }
    }
    protected void attendencedetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        attendencedetail.PageIndex = e.NewPageIndex;
        datashow();
    }
    
    protected void show_Click(object sender, EventArgs e)
    {
        
            datashow();
        
    }
}