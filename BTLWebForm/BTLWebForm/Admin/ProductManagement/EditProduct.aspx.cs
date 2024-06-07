using BTLWebForm.Helpers;
using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BTLWebForm.Admin.ProductManagement
{
    public partial class EditProduct : System.Web.UI.Page
    {
        DataUtilProducts data = new DataUtilProducts();
        IMGFileUpload UploadFile = new IMGFileUpload();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddpDM.DataSource = data.DanhSachDanhMuc();
                ddpDM.DataTextField = "name";
                ddpDM.DataValueField = "category_id";
                DataBind();
                Product product = (Product)Session["sp"];
                txtID.Text = product.product_id.ToString();
                txtName.Text = product.product_name.ToString();
                txtSKU.Text = product.SKU.ToString();
                txtdes.Text = product.description.ToString();
                txtGia.Text = product.price.ToString();
                txtDate.Text = product.product_date.ToString();
                txtKho.Text = product.stock.ToString();
                ddpDM.SelectedValue = product.Category_category_id.ToString();
                img.ImageUrl = "~/wwwroot/img/img_product/" + product.image.ToString();
            }
        }

        protected void Sua_Click(object sender, EventArgs e)
        {
            try
            {
                string fileName = UploadFile.UploadFile(image, "img_product");
                Product product = new Product()
                {
                    product_id = int.Parse(txtID.Text),
                    product_name = txtName.Text,
                    SKU = txtSKU.Text,
                    description = txtdes.Text,
                    price = Convert.ToDecimal(txtGia.Text),
                    stock = Convert.ToInt32(txtKho.Text),
                    Category_category_id = int.Parse(ddpDM.SelectedValue),
                    image = fileName,
                    product_date = DateTime.Parse(txtDate.Text),
                };
                data.Sua(product);
                message.Text = "Sửa thành công";

            }
            catch (Exception e1)
            {
                message.Text = "Lỗi trong quá trình sửa" + e1.Message;
            }
        }
    }
}