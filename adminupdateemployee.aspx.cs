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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    
    SqlDataAdapter da,da1;
    public void datashow()
    {
        da = new SqlDataAdapter("select userid,address,phone,mailid,branchid from user_detail", con);
        ds = new DataSet();
        da.Fill(ds,"user");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        
    }
   
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        
        datashow();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        datashow();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        DropDownList dd = ((DropDownList)e.Row.FindControl("branchdrop"));
        if (dd != null)
        {
            da1 = new SqlDataAdapter("select branchid from branch_detail", con);
            ds = new DataSet();
            da1.Fill(ds, "branch");
            dd.DataSource = ds.Tables["branch"];
            dd.DataTextField = "branchid";
            dd.DataBind();
            
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DropDownList dd = ((DropDownList)(GridView1.Rows[e.RowIndex].FindControl ("branchdrop")));
        SqlCommand cmd = new SqlCommand("update user_detail set address=@address,phone=@phone,mailid=@mailid,branchid=@branchid where userid=@userid", con);
        cmd.Parameters.Add("@userid", SqlDbType.Int).Value = Convert.ToInt32(GridView1. DataKeys[e.RowIndex].Value);
        cmd.Parameters.Add("@address",SqlDbType.VarChar).Value=Convert.ToString(((TextBox)(GridView1.Rows[e.RowIndex].FindControl("address"))).Text);
        cmd.Parameters.Add("@phone",SqlDbType.BigInt ).Value=Convert.ToInt64 (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("phone"))).Text);
        cmd.Parameters.Add("@mailid",SqlDbType.VarChar).Value=Convert.ToString(((TextBox)(GridView1.Rows[e.RowIndex].FindControl("mailid"))).Text);
        cmd.Parameters.Add("@branchid", SqlDbType.VarChar).Value = Convert.ToInt32(dd.SelectedItem.ToString());
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        datashow();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        datashow();
    }
}