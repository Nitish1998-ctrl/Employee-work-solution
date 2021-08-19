using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }
    }
    public void datashow()
    {
        da = new SqlDataAdapter("select * from notice", con);
        ds = new DataSet();
        da.Fill(ds, "notice");
        noticedetail.DataSource = ds.Tables["notice"];
        noticedetail.DataBind();

    }
    SqlConnection con=new SqlConnection (ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void upload_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dd=Convert.ToDateTime(DateTime.Now.ToLongDateString());
        string path = Server.MapPath("~/UploadedData");
        FileUpload1.SaveAs(path + "\\" + FileUpload1.FileName);
        string x = FileUpload1.FileName;
        string userid = Session["user"].ToString();
        cmd = new SqlCommand("insert into notice values(@senderid,@date,@fname)", con);
        cmd.Parameters.Add("@senderid", Convert.ToInt32(userid));
        cmd.Parameters.Add ("@date",dd.ToShortDateString());
        cmd.Parameters.Add("@fname", x);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        result.Text = "notice uploaded successfully...";
        datashow();
    }
    protected void noticedetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        noticedetail.PageIndex = e.NewPageIndex;
        datashow();
    }
    protected void noticedetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd = new SqlCommand("delete from notice where noticeid=@noticeid", con);
        cmd.Parameters.Add("@noticeid",SqlDbType.Int).Value=Convert.ToInt32(noticedetail.DataKeys[e.RowIndex ].Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        datashow();
    }
    protected void file_click(object sender, EventArgs  e)
    {
                LinkButton lnk = (LinkButton)sender ;

                string fname = lnk.Text;
                Response.ContentType = "application//x-download";
                Response.AddHeader("content-disposition", "attachment;filename=" + fname);
                Response.WriteFile(Server.MapPath("~/UploadedData" + "\\" + fname));
                Response.Flush();
                Response.End();
            
        }
    


}