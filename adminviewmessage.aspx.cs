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
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            datashow();
        }
    }
    public void datashow()
    {
        
        string  i = ((string )Session["user"].ToString());
        int j = Convert.ToInt32(i);
        da = new SqlDataAdapter("select * from message_detail where receiverid="+j+"", con);
        ds = new DataSet();
        da.Fill(ds, "viewmessage");
        Repeater1.DataSource = ds.Tables["viewmessage"];
        Repeater1.DataBind();

        //for (int j = 0; j <= ds.Tables["viewmessage"].Rows.Count - 1; j++)
        //{
        //    if (i == ds.Tables["viewmessage"].Rows[j][2].ToString())
        //    {
                
        //    }
        //}
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
       
       Panel pnl = (Panel)(Repeater1.Items[e.Item.ItemIndex].FindControl("panel1"));
       ImageButton imb = (ImageButton)(Repeater1.Items[e.Item.ItemIndex].FindControl("del"));
       Label lab = (Label)(Repeater1.Items[e.Item.ItemIndex].FindControl("msgid"));
       ImageButton can = (ImageButton)(Repeater1.Items[e.Item.ItemIndex].FindControl("cancel"));
       ImageButton rply = (ImageButton)(Repeater1.Items[e.Item.ItemIndex].FindControl("sendrply"));
       Label labsnd = (Label)(Repeater1.Items[e.Item.ItemIndex].FindControl("senderid"));
       TextBox rplytxt = (TextBox)(Repeater1.Items[e.Item.ItemIndex].FindControl("replytxt"));
       Label rslt = (Label)(Repeater1.Items[e.Item.ItemIndex].FindControl("replystatus"));

       if (e.CommandName == "visiblepanel")
       {
           pnl.Visible = true;
       }

       if (e.CommandName == "Delete")
       {
           SqlCommand cmd = new SqlCommand("delete from message_detail where messageid=@messageid", con);
           cmd.Parameters.Add("@messageid", SqlDbType.Int).Value = Convert.ToInt32(lab.Text);
           con.Open();
           cmd.ExecuteNonQuery();
           con.Close();
           datashow();
       }
       if (e.CommandName == "cancel")
       {
           pnl.Visible = false;
       }

       if (e.CommandName == "sendreply")
       {
           string  i = ((string )Session["user"].ToString());
           DateTime dd = Convert.ToDateTime(DateTime.Now.ToLongDateString());
           SqlCommand cmd = new SqlCommand("insert into message_detail values(@senderid,@receiverid,@date,@messages)", con);
           cmd.Parameters.Add("@senderid", SqlDbType.Int).Value = Convert.ToInt32(i);
           cmd.Parameters.Add("@receiverid", SqlDbType.Int).Value = Convert.ToInt32(labsnd.Text);
           cmd.Parameters.Add("@date", SqlDbType.VarChar).Value = Convert.ToString(dd.ToShortDateString());
           cmd.Parameters.Add("@messages", SqlDbType.VarChar).Value = Convert.ToString(rplytxt.Text);
           con.Open();
           cmd.ExecuteNonQuery();
           con.Close();
           datashow();
           pnl.Visible = false;
           


        }
   }

   
}