using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BTLWebForm.User
{
    public class DataUtilUser
    {
        SqlConnection con;

        public DataUtilUser()
        {
            string sqlCon = @"Data Source=TRANMINHHIEU\SQLEXPRESS;Initial Catalog=DB_TMDT;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }

        public DataTable DanhSachSanPham()
        {
            con.Open();
            string sql = "select * from product";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }



    }
}
