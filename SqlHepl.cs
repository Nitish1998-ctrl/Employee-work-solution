using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for SqlHepl
/// </summary>
public class SqlHelp
{
    SqlConnection con;
    SqlCommand com;
    private SqlHelp() 
    {
        con = new SqlConnection("Data Source=.;Initial Catalog=ework;Integrated Security=True");
        com = new SqlCommand();
        com.Connection = con;
    }
   static SqlHelp _self;
    public static SqlHelp GetRef()
    {
        if (_self == null)
        {
            _self = new SqlHelp();
        }
        return _self;
    }
    public int RunCmd(string str)
    {
        com.CommandText = str;
        con.Open();
        int res = com.ExecuteNonQuery();
        con.Close();
        return res;
    }
    public object GetCell(string str)
    {
        com.CommandText = str;
        con.Open();
        object res = com.ExecuteScalar();
        con.Close();
        return res;
    }

}