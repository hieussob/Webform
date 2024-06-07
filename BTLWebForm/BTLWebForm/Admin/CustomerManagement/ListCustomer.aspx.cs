using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.Admin.CustomerManagement
{
    public partial class ListCustomer : System.Web.UI.Page
    {
        DataUtilsCustomer data = new DataUtilsCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThi();
        }

        public void HienThi()
        {
            dgv.DataSource = data.DanhSachKhachHang();
            DataBind();
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Xóa")
            {
                int customer_id = int.Parse(e.CommandArgument.ToString());
                //data.Xoa(customer_id);
                HienThi();
            }
        }

        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Sửa")
            {
                int customer_id = int.Parse(e.CommandArgument.ToString());
                Customer customer = data.LayRa1KhachHang(customer_id);
                Session["kh"] = customer;
                Response.Redirect("EditCustomer.aspx");
            }
        }
    }
}