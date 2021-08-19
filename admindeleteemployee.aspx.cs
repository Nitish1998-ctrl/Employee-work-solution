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
    
    SqlDataAdapter da,da1;
    DataSet ds;
    SqlCommand cmd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if (dd1 != null)
            {
                da = new SqlDataAdapter("select branchid from branch_detail", con);
                ds = new DataSet();
                da.Fill(ds, "branch");
                for (int i = 0; i <= ds.Tables["branch"].Rows.Count - 1; i++)
                {
                    dd1.Items.Add(ds.Tables["branch"].Rows[i][0].ToString());
                }
            }

        }
        
    }

    protected void dd1_SelectedIndexChanged(object sender, EventArgs e)
    {
            if (dd2 != null)
            {
                da1 = new SqlDataAdapter("select userid from user_detail where branchid=" + dd1.SelectedItem.ToString() + " ", con);
                ds = new DataSet();
                da1.Fill(ds, "user");
                dd2.Items.Clear();
                for (int i = 0; i <= ds.Tables["user"].Rows.Count - 1; i++)
                {

                    dd2.Items.Add(ds.Tables["user"].Rows[i][0].ToString());

                }


            }

       
    }
    protected void delete_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            cmd = new SqlCommand("delete from user_detail where userid=@userid", con);
            cmd.Parameters.Add("@userid", SqlDbType.Int).Value = Convert.ToInt32(dd2.SelectedItem.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            if (dd2 != null)
            {
                da1 = new SqlDataAdapter("select userid from user_detail where branchid=" + dd1.SelectedItem.ToString() + " ", con);
                ds = new DataSet();
                da1.Fill(ds, "user");
                for (int i = 0; i <= ds.Tables["user"].Rows.Count - 1; i++)
                {
                    dd2.Items.Clear();
                    dd2.Items.Add(ds.Tables["user"].Rows[i][0].ToString());

                }
                Response.Write("<script language=javascript>alert('Record deleted successfully')</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language=javascript>alert('Delete user from group first!!!!!')</script>");
        }
        finally
        {
         
            
            con.Close();
        }

        }
}