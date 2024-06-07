using BTLWebForm.Admin.ProductManagement;
using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.User
{
    public partial class Home : System.Web.UI.Page
    {
        DataUtilProducts data = new DataUtilProducts();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ProductRepeater.DataSource = data.DanhSachSanPham();
                ProductRepeater.DataBind();
            }
        }

        protected void Xem_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Xem")
            {
                int product_id = Convert.ToInt32(e.CommandArgument);
                Product product = data.LayRa1SanPham(product_id);
                Session["product"] = product;
                Response.Redirect("DetailProduct.aspx"); // Ví dụ chuyển hướng đến trang chi tiết sản phẩm với product_id
            }
        }

       

       
    }
}