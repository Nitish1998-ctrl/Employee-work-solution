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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }
    }
    protected void leavedetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        leavedetail.PageIndex = e.NewPageIndex;
        datashow();
    }
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    public void datashow()
    {
        da = new SqlDataAdapter("select * from leave_detail", con);
        ds = new DataSet();
        da.Fill(ds, "leave");
        leavedetail.DataSource = ds.Tables["leave"];
        leavedetail.DataBind();
    }
    protected void leavedetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from leave_detail where leaveid=@leaveid", con);
        cmd.Parameters.AddWithValue("@leaveid", SqlDbType.Int).Value = Convert.ToInt32(leavedetail.DataKeys[e.RowIndex].Value);

        con.Open();
        cmd.ExecuteNonQuery();
        
        con.Close();
        datashow();
    }
    protected void leavedetail_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
        if (e.CommandName == "allow")
        {
        }
    }
    protected void leavedetail_RowEditing(object sender, GridViewEditEventArgs e)
    {
        leavedetail.EditIndex = e.NewEditIndex;
        datashow();
    }
    protected void leavedetail_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label l = (Label)leavedetail.Rows[e.RowIndex].FindControl("eid");  
            cmd = new SqlCommand("insert into message_detail values(@senderid,@receiverid,@date,@message)", con);
            DateTime dd = Convert.ToDateTime(DateTime.Now.ToLongDateString());
            cmd.Parameters.Add("@senderid",l.Text);
            cmd.Parameters.Add("@receiverid", SqlDbType.Int).Value = Convert.ToInt32(((Label)(leavedetail.Rows[e.RowIndex].FindControl("eid"))).Text);
                
            cmd.Parameters.Add("@date", dd.ToShortDateString());
            cmd.Parameters.Add("@message", "your leave is accepted");
            con.Open();
            cmd.ExecuteNonQuery();

            leavedetail.EditIndex = -1;

            con.Close();
            datashow();

    }
    protected void leavedetail_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Label l = (Label)leavedetail.Rows[e.RowIndex].FindControl("eid");  
        cmd = new SqlCommand("insert into message_detail values(@senderid,@receiverid,@date,@message)", con);
        DateTime dd = Convert.ToDateTime(DateTime.Now.ToLongDateString());
        cmd.Parameters.Add("@senderid", l.Text);
        cmd.Parameters.Add("@receiverid", SqlDbType.Int).Value = Convert.ToInt32(((Label)(leavedetail.Rows[e.RowIndex].FindControl("eid"))).Text);

        cmd.Parameters.Add("@date", dd.ToShortDateString());
        cmd.Parameters.Add("@message", "your leave is not accepted");
        con.Open();
        cmd.ExecuteNonQuery();

        leavedetail.EditIndex = -1;

        con.Close();
        datashow();
    }
}