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
    SqlConnection con=new SqlConnection (ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        sendertxt.Text = Session["user"].ToString();
        if (!Page.IsPostBack)
        {
            da=new SqlDataAdapter  ("select userid from user_detail where userid!="+sendertxt.Text +"", con);
            ds=new DataSet ();
            da.Fill(ds,"receiverid");
            for (int i = 0; i <= ds.Tables["receiverid"].Rows.Count - 1; i++)
            {
                receiveList.Items.Add(ds.Tables["receiverid"].Rows[i][0].ToString());
                
            }
        }
    }
    protected void send_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("insert into message_detail values(@senderid,@receiverid,@date,@message)", con);
        DateTime dd = Convert.ToDateTime(DateTime.Now.ToLongDateString ());
        cmd.Parameters.Add("@senderid", Convert.ToInt32(sendertxt.Text));
        cmd.Parameters.Add ("@receiverid",Convert.ToInt32 (receiveList.SelectedItem.ToString()));
        cmd.Parameters.Add("@date",dd.ToShortDateString());
        cmd.Parameters.Add ("@message",Convert.ToString(messagetxt.Text));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        result.Text="Message sent successfully....";

        sendertxt.Text  = messagetxt.Text  = "";

    }
}