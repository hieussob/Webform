using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BTLWebForm.Admin.ProductManagement
{
    public class DataUtilProducts
    {
        SqlConnection con;
        public DataUtilProducts()
        {
            string sqlCon = @"Data Source=TRANMINHHIEU\SQLEXPRESS;Initial Catalog=DB_TMDT;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }

        public List<Product> DanhSachSanPham()
        {
            List<Product> products = new List<Product>();
            con.Open();
            string sql = "select * from Product";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Product product = new Product()
                {
                    //product_id = (int)dr["product_id"],
                    //product_name = (string)dr["product_name"],
                    //SKU = (string)dr["SKU"],
                    //description = (string)dr["Description"],
                    //price = Convert.ToInt32(dr["price"]),
                    //stock = (int)dr["stock"],
                    //Category_category_id = (int)dr["Category_category_id"],
                    //image = (string)dr["image"],
                    //product_date = (DateTime)dr["product_date"]
                    product_id = Convert.ToInt32(dr["product_id"]),
                    product_name = dr["product_name"] == DBNull.Value ? null : (string)dr["product_name"],
                    SKU = dr["SKU"] == DBNull.Value ? null : (string)dr["SKU"],
                    description = dr["Description"] == DBNull.Value ? null : (string)dr["Description"],
                    price = dr["price"] == DBNull.Value ? 0 : Convert.ToInt32(dr["price"]),
                    stock = Convert.ToInt32(dr["stock"]),
                    Category_category_id = Convert.ToInt32(dr["Category_category_id"]),
                    image = dr["image"] == DBNull.Value ? null : (string)dr["image"],
                    product_date = Convert.ToDateTime(dr["product_date"])
                };
                products.Add(product);  
            }
            con.Close();
            return products;
        }

        public void ThemSanPham(Product product)
        {
            con.Open();
            string sql = "insert into product(product_name, SKU, description, price, stock, Category_category_id, image, product_date ) values (@ten,@maSKU,@mota,@gia,@kho,@dm,@anh,@ngay)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", product.product_name);
            cmd.Parameters.AddWithValue("maSKU", product.SKU);
            cmd.Parameters.AddWithValue("mota", product.description);
            cmd.Parameters.AddWithValue("gia", product.price);
            cmd.Parameters.AddWithValue("kho", product.stock);
            cmd.Parameters.AddWithValue("dm", product.Category_category_id);
            cmd.Parameters.AddWithValue("anh", product.image);
            cmd.Parameters.AddWithValue("ngay", product.product_date);
            cmd.ExecuteNonQuery();
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
                    name = (string)dr["name"],
                };
                list.Add(category);
            }
            return list;
        }

        public Product LayRa1SanPham(int product_id)
        {
            Product product = null;
            con.Open();
            string sql = "select * from product where product_id = @id ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id",product_id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                product = new Product()
                {
                    
                    product_id = Convert.ToInt32(dr["product_id"]),
                    product_name = dr["product_name"] == DBNull.Value ? null : (string)dr["product_name"],
                    SKU = dr["SKU"] == DBNull.Value ? null : (string)dr["SKU"],
                    description = dr["Description"] == DBNull.Value ? null : (string)dr["Description"],
                    price = dr["price"] == DBNull.Value ? 0 : Convert.ToInt32(dr["price"]),
                    stock = Convert.ToInt32(dr["stock"]),
                    Category_category_id = Convert.ToInt32(dr["Category_category_id"]),
                    image = dr["image"] == DBNull.Value ? null : (string)dr["image"],
                    product_date = Convert.ToDateTime(dr["product_date"])
                }; 
            }
            return product;
        }

        public void Xoa(int product_id)
        {
            con.Open();
            string sql = "BEGIN TRANSACTION;\r\nDELETE FROM Cart \r\nWHERE Product_product_id in (SELECT product_id FROM Product WHERE product_id = @id);\r\n\r\nDELETE FROM Order_item \r\nWHERE Product_product_id in (SELECT product_id FROM Product WHERE product_id = @id);\r\n\r\nDELETE FROM Product \r\nWHERE product_id = @id;\r\n\r\n\r\nCOMMIT TRANSACTION;";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", product_id);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void Sua(Product product)
        {
            con.Open();
            string sql = "update product set product_name = @ten, SKU = @maSKU, description = @mota, price=@gia, stock=@kho, Category_category_id=@dm, image=@anh, product_date =@ngay where product_id = @id ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", product.product_id);
            cmd.Parameters.AddWithValue("ten", product.product_name);
            cmd.Parameters.AddWithValue("maSKU", product.SKU);
            cmd.Parameters.AddWithValue("mota", product.description);
            cmd.Parameters.AddWithValue("gia", product.price);
            cmd.Parameters.AddWithValue("kho", product.stock);
            cmd.Parameters.AddWithValue("dm", product.Category_category_id);
            cmd.Parameters.AddWithValue("anh", product.image);
            cmd.Parameters.AddWithValue("ngay", product.product_date);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}