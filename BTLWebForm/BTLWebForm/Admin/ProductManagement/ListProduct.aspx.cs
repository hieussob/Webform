using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.Admin.ProductManagement
{
    public partial class ListProduct : System.Web.UI.Page
    {
        DataUtilProducts data = new DataUtilProducts();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThi();
        }

        private void HienThi()
        {
            dgv.DataSource = data.DanhSachSanPham();
            DataBind();
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Xóa")
            {
                int product_id = int.Parse(e.CommandArgument.ToString());
                data.Xoa(product_id);
                HienThi();
            }
        }

        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Sửa")
            {
                int product_id = int.Parse(e.CommandArgument.ToString());
                Product product = data.LayRa1SanPham(product_id);
                Session["sp"] = product;
                Response.Redirect("EditProduct.aspx");
            }
        }
    }
}