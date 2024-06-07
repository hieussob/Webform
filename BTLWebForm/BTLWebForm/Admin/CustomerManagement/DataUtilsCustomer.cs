using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace BTLWebForm.Admin.CustomerManagement
{
    public class DataUtilsCustomer
    {
        SqlConnection con;
        public DataUtilsCustomer()
        {
            string sqlCon = @"Data Source=TRANMINHHIEU\SQLEXPRESS;Initial Catalog=DB_TMDT;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }

        public List<Customer> DanhSachKhachHang()
        {
            List<Customer> customers = new List<Customer>();
            con.Open();
            string sql = "select * from Customer";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Customer customer = new Customer()
                {
                    customer_id = Convert.ToInt32(dr["customer_id"]),
                    first_name = dr["first_name"] == DBNull.Value ? null : (string)dr["first_name"],
                    last_name = dr["last_name"] == DBNull.Value ? null : (string)dr["last_name"],
                    email = dr["email"] == DBNull.Value ? null : (string)dr["email"],
                    password = dr["password"] == DBNull.Value ? null : (string)dr["password"],
                    address = dr["address"] == DBNull.Value ? null : (string)dr["address"],
                    phone_number = dr["phone_number"] == DBNull.Value ? null : (string)dr["phone_number"],
                   
                };
                customers.Add(customer);
            }
            con.Close();
            return customers;
        }

        public void ThemKhachHang(Customer customer)
        {
            con.Open();
            string sql = "insert into customer values (@ho,@ten,@em,@mk,@dc,@sdt)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ho", customer.first_name);
            cmd.Parameters.AddWithValue("ten", customer.last_name);
            cmd.Parameters.AddWithValue("em", customer.email);
            cmd.Parameters.AddWithValue("mk", customer.password);
            cmd.Parameters.AddWithValue("dc", customer.address);
            cmd.Parameters.AddWithValue("sdt", customer.phone_number);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public Customer LayRa1KhachHang(int customer_id)
        {
            Customer customer = null;
            con.Open();
            string sql = "select * from customer where customer_id = @id ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", customer_id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                customer = new Customer()
                {
                    customer_id = Convert.ToInt32(dr["customer_id"]),
                    first_name = dr["first_name"] == DBNull.Value ? null : (string)dr["first_name"],
                    last_name = dr["last_name"] == DBNull.Value ? null : (string)dr["last_name"],
                    email = dr["email"] == DBNull.Value ? null : (string)dr["email"],
                    password = dr["password"] == DBNull.Value ? null : (string)dr["password"],
                    address = dr["address"] == DBNull.Value ? null : (string)dr["address"],
                    phone_number = dr["phone_number"] == DBNull.Value ? null : (string)dr["phone_number"],

                };
            }
            return customer;
        }

        public void Xoa(int customer_id)
        {
            con.Open();
            string sql = "BEGIN TRANSACTION;\r\nDELETE FROM Cart \r\nWHERE Product_product_id in (SELECT product_id FROM Product WHERE product_id = @id);\r\n\r\nDELETE FROM Order_item \r\nWHERE Product_product_id in (SELECT product_id FROM Product WHERE product_id = @id);\r\n\r\nDELETE FROM Product \r\nWHERE product_id = @id;\r\n\r\n\r\nCOMMIT TRANSACTION;";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", customer_id);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void Sua(Customer customer)
        {
            con.Open();
            string sql = "update customer set first_name = @ho, last_name = @ten, email = @em, password = @mk, address = @dc, phone_number=@dt where customer_id = @id ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", customer.customer_id);
            cmd.Parameters.AddWithValue("ho",customer.first_name);
            cmd.Parameters.AddWithValue("ten", customer.last_name);
            cmd.Parameters.AddWithValue("em", customer.email);
            cmd.Parameters.AddWithValue("mk", customer.password);
            cmd.Parameters.AddWithValue("dc", customer.address);
            cmd.Parameters.AddWithValue("dt", customer.phone_number);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}