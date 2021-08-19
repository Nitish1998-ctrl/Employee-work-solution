using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;
using System.Data;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (dd  != null)
        {
            da = new SqlDataAdapter("select branchid from branch_detail", con);
            ds = new DataSet();
            da.Fill(ds, "branch");
            for (int i = 0; i <= ds.Tables["branch"].Rows.Count - 1; i++)
            {
                dd.Items.Add(ds.Tables["branch"].Rows[i ][0].ToString());
            }
            

        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    SqlConnection   con = new SqlConnection(ConfigurationManager .ConnectionStrings ["con"].ConnectionString );
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        cmd = new SqlCommand("insert into user_detail values (@userid,@password,@fname,@lname,@roles,@address,@phone,@mailid,@branchid,@security_question,@answer)", con);
        cmd.Parameters.AddWithValue("@userid", Convert.ToInt32(TextBox1.Text));
        cmd.Parameters.AddWithValue("@password", Convert.ToString(TextBox2.Text));
        cmd.Parameters.AddWithValue("@fname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox4.Text);
        cmd.Parameters.AddWithValue("@roles", DropDownList2.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@address", Convert.ToString(TextBox7.Text));
        cmd.Parameters.AddWithValue("@phone", Convert.ToInt64 (TextBox6.Text));
        cmd.Parameters.AddWithValue("@mailid", Convert.ToString(TextBox8.Text));
        cmd.Parameters.AddWithValue("@branchid",(dd.SelectedItem.ToString()));
        cmd.Parameters.AddWithValue("@security_question", DropDownList1.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@answer", Convert.ToString(TextBox11.Text));
        con.Open();
        cmd.ExecuteNonQuery();
        MessageBox.Show("data is inserted successfully");
        con.Close();
    }

   

    
   
}