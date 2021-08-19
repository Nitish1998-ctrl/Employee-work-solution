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
    SqlDataAdapter da;
    DataSet ds;
    public void datashow()
    {
      da=new SqlDataAdapter  ("select * from upload", con);
      ds = new DataSet();
      da.Fill(ds, "upload");
      downloaddetail. DataSource = ds.Tables["upload"];
      downloaddetail. DataBind();
    }
    protected void downloaddetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      downloaddetail. PageIndex = e.NewPageIndex;
        datashow();
    }
    protected void downloaddetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from upload where sno=@sno", con);
        cmd.Parameters.Add("@sno", SqlDbType.Int).Value = Convert.ToInt32(downloaddetail. DataKeys[e.RowIndex].Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        datashow();
    }
   protected void file_click(object sender, EventArgs e)
    {

        LinkButton b1 = (LinkButton)sender;
        string s = b1.Text;

        Response.ContentType = "application//x-download";
        Response.AddHeader("content-disposition", "attachment;filename=" + s);
        Response.WriteFile(Server.MapPath("~/UploadedData" + "\\" + s));
        Response.Flush();
        Response.End();
    }
}