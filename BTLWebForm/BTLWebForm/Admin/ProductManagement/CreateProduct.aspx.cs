using BTLWebForm.Helpers;
using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.Admin.ProductManagement
{
    public partial class CreateProduct : System.Web.UI.Page
    {
        DataUtilProducts data = new DataUtilProducts();
        IMGFileUpload UploadFile = new IMGFileUpload();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddpCate.DataSource = data.DanhSachDanhMuc();
                ddpCate.DataTextField = "name";
                ddpCate.DataValueField = "category_id";
                DataBind();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string fileName = UploadFile.UploadFile(img,"img_product");
            try
            {
                Product product = new Product()
                {
                    product_name = txtname.Text,
                    SKU = txtSKU.Text,
                    description = txtDescription.Text,
                    price = Convert.ToDecimal(txtGia.Text),
                    stock = Convert.ToInt32(txtStock.Text),
                    Category_category_id = int.Parse(ddpCate.SelectedValue),
                    image = fileName,
                    product_date = DateTime.Parse(txtDate.Text),
                };
                data.ThemSanPham(product);
                message.Text = "Thêm sản phẩm thành công";
            }catch(Exception e1){
                message.Text ="Lỗi trong quá trình thêm sản phẩm:" + e1.Message;
            }
        }
    }
}