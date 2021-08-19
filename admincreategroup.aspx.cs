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
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (delgrpdropdown != null)
            {
                da = new SqlDataAdapter("select groupname from group_detail", con);
                ds = new DataSet();
                da.Fill(ds, "group");
                for (int i = 0; i <= ds.Tables["group"].Rows.Count - 1; i++)
                {
                    delgrpdropdown.Items.Add(ds.Tables["group"].Rows[i][0].ToString());
                }
            }

            if ( dd1   != null)
            {
                da = new SqlDataAdapter("select * from group_detail", con);
                ds = new DataSet();
                da.Fill(ds, "group");
                for (int i = 0; i <= ds.Tables["group"].Rows.Count - 1; i++)
                {
                    dd1.Items.Add(ds.Tables["group"].Rows[i][1].ToString());
                }
            }
            if (useriddropdown  != null)
            {
                da = new SqlDataAdapter("select userid from user_detail where userid!="+Session["user"].ToString()+"", con);
                ds = new DataSet();
                da.Fill(ds, "assign");
                for (int i = 0; i <= ds.Tables["assign"].Rows.Count - 1; i++)
                {
                   useriddropdown . Items.Add(ds.Tables["assign"].Rows[i][0].ToString());
                }
            }
        }
    }
    SqlDataAdapter da,da1,da2;
    DataSet ds;
    SqlCommand cmd;
    protected void send_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("insert into group_detail values (@groupname)", con);
        cmd.Parameters.AddWithValue ("@groupname", grpnametxt.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        result1.Text = "Group created successfully";
        grpnametxt.Text = "";

        if (delgrpdropdown != null)
        {
            delgrpdropdown.Items.Clear();
            da1 = new SqlDataAdapter("select groupname from group_detail", con);
            ds = new DataSet();
            da1.Fill(ds, "group");
            for (int i = 0; i <= ds.Tables["group"].Rows.Count - 1; i++)
            {
                delgrpdropdown.Items.Add(ds.Tables["group"].Rows[i][0].ToString());
            }
        }
        if (dd1   != null)
        {
            dd1. Items.Clear();
            da1 = new SqlDataAdapter("select * from group_detail", con);
            ds = new DataSet();
            da1.Fill(ds, "group");
            for (int i = 0; i <= ds.Tables["group"].Rows.Count - 1; i++)
            {
                dd1. Items.Add(ds.Tables["group"].Rows[i][1].ToString());
            }
        }
    }
    protected void delgrp_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("delete from group_detail where groupname=@groupname", con);
        cmd.Parameters.Add("@groupname", delgrpdropdown. SelectedItem.ToString());
        con.Open();
        cmd.ExecuteNonQuery();

        if (delgrpdropdown != null)
        {
            delgrpdropdown.Items.Clear();
            da1 = new SqlDataAdapter("select groupname from group_detail", con);
            ds = new DataSet();
            da1.Fill(ds, "group");
            for (int i = 0; i <= ds.Tables["group"].Rows.Count - 1; i++)
            {
                delgrpdropdown.Items.Add(ds.Tables["group"].Rows[i][0].ToString());
            }
        }
        con.Close();
        result3.Text = "Group deleted successfully";

    }

    protected void addingroup_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("insert into groupuser_detail values (@groupname,@userid)", con);
       
        cmd.Parameters.AddWithValue("@groupname",Convert.ToString( dd1.SelectedItem.ToString()));

        cmd.Parameters.AddWithValue("@userid", useriddropdown.SelectedItem.ToString());
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        result2.Text = "User assign to group successfully";


    }







    protected void dd1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
            
            da1 = new SqlDataAdapter("select * from group_detail where groupname='"+dd1.SelectedItem.ToString()+"'", con);
            ds = new DataSet();
            da1.Fill(ds, "group");
            
            
               grpid.Text= ds.Tables["group"].Rows[0][0].ToString();
            
       
    }
}