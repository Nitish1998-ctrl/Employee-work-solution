using System;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da,da1,da2;
    DataSet ds,ds1;
    SqlCommand cmd;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        sendertxt.Text = Session["user"].ToString();
        if (!Page.IsPostBack)
        {
            if (dd1  != null)
            {

                da = new SqlDataAdapter("select groupname from group_detail", con);
                ds = new DataSet();
                da.Fill(ds, "grp");
                for(int i=0;i<=ds.Tables["grp"].Rows.Count-1;i++)
                {
                dd1. Items.Add(ds.Tables["grp"].Rows[i][0].ToString());
                }
            }
        }
    }
    SqlDataReader dr;
    DataTable dt = new DataTable();
    public void clear()
    {
        ListBox1.Items.Clear();
    }
    protected void dd1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd1 != null)
        {
            cmd = new SqlCommand("select userid from groupuser_detail where groupname='" + dd1.SelectedItem.ToString() + "'", con);

            clear();

            con.Open();
            dr = cmd.ExecuteReader();

            dt.Load(dr);
            con.Close();


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                ListBox1.Items.Add("Userid:" + dt.Rows[i][0].ToString());

            }

        }
        
    }
    protected void send_Click(object sender, ImageClickEventArgs e)
    {


        if (dd1 != null)
        {
            cmd = new SqlCommand("select userid from groupuser_detail where groupname='" + dd1.SelectedItem.ToString() + "'", con);

            clear();

            con.Open();
            dr = cmd.ExecuteReader();

            dt.Load(dr);
            con.Close();


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                ListBox1.Items.Clear();

            }

        }
        
        

        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            cmd = new SqlCommand("insert into message_detail values(@senderid,@receiverid,@date,@messages)", con);
            cmd.Parameters.AddWithValue("@senderid", Convert.ToInt32(sendertxt.Text));
            cmd.Parameters.AddWithValue("@receiverid", Convert.ToInt32(dt.Rows[i][0].ToString()));



            DateTime dd = Convert.ToDateTime(DateTime.Now.ToLongDateString());

            cmd.Parameters.AddWithValue("@date", dd.ToShortDateString());
            cmd.Parameters.AddWithValue("@messages", Convert.ToString(messagetxt.Text));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        result.Text = "Group message sent successfully";
        messagetxt.Text = "";


    }
}