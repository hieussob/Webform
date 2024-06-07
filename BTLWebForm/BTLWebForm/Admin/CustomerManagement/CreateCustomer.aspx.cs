using BTLWebForm.Helpers;
using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BTLWebForm.Admin.CustomerManagement
{
    public partial class CreateCustomer : System.Web.UI.Page
    {
        DataUtilsCustomer data =new DataUtilsCustomer();
        IMGFileUpload upLoad = new IMGFileUpload();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                Customer customer = new Customer()
                {
                    first_name = txtHo.Text,
                    last_name = txtTen.Text,
                    email = txtEmail.Text,
                    password = txtMK.Text,
                    address = txtDC.Text,
                    phone_number = txtDT.Text
                };
                data.ThemKhachHang(customer);
                message.Text = "Thêm khách hàng thành công";
                Response.Redirect("~/Admin/CustomerManagement/ListCustomer.aspx");
            }
            catch (Exception e1)
            {
                message.Text = "Lỗi trong quá trình thêm sản phẩm:" + e1.Message;
            }
        }
    }
}