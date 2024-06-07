using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BTLWebForm.Admin
{
    public class DataUtilsCategory
    {
        SqlConnection con;
        
        public DataUtilsCategory()
        {
            string sqlCon = @"Data Source=TRANMINHHIEU\SQLEXPRESS;Initial Catalog=DB_TMDT;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }

        public List<Category> DanhSachDanhMuc()
        {
            List<Category> list = new List<Category>();
            con.Open();
            string sql = "select * from category";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Category category = new Category()
                {
                    category_id = (int)dr["category_id"],
                    name = (string)dr["name"]
                };
                list.Add(category);
            }
            con.Close();
            return list;
        }

        public void Them(Category category)
        {
            con.Open();
            string sql = "insert into category values (@ten)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", category.name);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public Category LayRa1DanhMuc(int category_id)
        {
            Category category = null;
            con.Open();
            string sql = "select * from category where category_id = @category_id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("category_id", category_id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                category = new Category()
                {
                    category_id = (int)dr["category_id"],
                    name = (string)dr["name"]
                };
            }
            con.Close();
            return category;
        }

        public void XoaDanhMuc(int category_id)
        {
            con.Open();
            string sql = "BEGIN TRANSACTION;\r\nDELETE FROM Cart \r\nWHERE Product_product_id in (SELECT product_id FROM Product WHERE Category_category_id = @category_id);\r\n\r\nDELETE FROM Order_item \r\nWHERE Product_product_id in (SELECT product_id FROM Product WHERE Category_category_id = @category_id);\r\n\r\nDELETE FROM Product \r\nWHERE Category_category_id = @category_id;\r\n\r\nDELETE FROM Category \r\nWHERE category_id = @category_id;\r\n\r\nCOMMIT TRANSACTION;";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("category_id", category_id);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void CapNhatDanhMuc(Category category)
        {
            con.Open();
            string sql = "update category set name =@ten where category_id = @id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", category.category_id);
            cmd.Parameters.AddWithValue("ten", category.name);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}