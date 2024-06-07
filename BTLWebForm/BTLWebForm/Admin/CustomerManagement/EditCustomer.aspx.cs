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
    public partial class EditCustomer : System.Web.UI.Page
    {   
        DataUtilsCustomer data = new DataUtilsCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Customer customer = (Customer)Session["kh"];
                txtID.Text = customer.customer_id.ToString();
                txtHo.Text = customer.first_name.ToString();
                txtTen.Text = customer.last_name.ToString();
                txtEm.Text = customer.email.ToString();
                txtMK.Text = customer.password.ToString();  
                txtDC.Text = customer.address.ToString();
                txtDT.Text = customer?.phone_number?.ToString() ?? "";
            }
        }

        protected void Sua_Click(object sender, EventArgs e)
        {
            try
            {
                //string fileName = UploadFile.UploadFile(image, "img_product");
                Customer customer = new Customer()
                {
                    customer_id = int.Parse(txtID.Text),
                    first_name = txtHo.Text,
                    last_name = txtTen.Text,
                    email = txtEm.Text,
                    password = txtMK.Text,
                    address = txtDC.Text,
                    phone_number = txtDT.Text,
                    
                };
                data.Sua(customer);
                message.Text = "Sửa thành công";

            }
            catch (Exception e1)
            {
                message.Text = "Lỗi trong quá trình sửa" + e1.Message;
            }
        }
    }
}