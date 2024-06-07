using Antlr.Runtime.Tree;
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
    public partial class DetailProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               Product product = (Product)Session["product"];
                product_id.Text = product.product_id.ToString();
                product_name.Text = product.product_name.ToString();
                price.Text = product.price.ToString();
                mota.Text = product.description.ToString();
                image.ImageUrl = "~/wwwroot/img/img_product/" + product.image.ToString();
                txtQuantity.Text = "1";
                DataBind();
            }
        }

        

        protected void GioHang_Click(object sender, CommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "GioHang")
                {
                    int quantity;
                    if (int.TryParse(txtQuantity.Text, out quantity))
                    {
                        // Assuming quantity is needed for further processing
                        Response.Write(quantity);
                    }
                    else
                    {
                        message.Text = "Invalid quantity.";
                    }
                }
            }
            catch (Exception ex)
            {
                message.Text = $"Error: {ex.Message}";
            }
        }

        protected void Them_Click(object sender, EventArgs e)
        {
            int quantity = int.Parse((txtQuantity.Text).ToString());
            message.Text = "áhdashd";
        }


    }
}