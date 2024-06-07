using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.Admin
{
    public partial class EditCategory : System.Web.UI.Page
    {
        DataUtilsCategory data = new DataUtilsCategory();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Category category = (Category)Session["cate"];
                txtID.Text = category.category_id.ToString();
                txtName.Text = category.name.ToString();
                DataBind();
            }
        }

        protected void Sua_Click(object sender, EventArgs e)
        {
            try
            {
                Category category = new Category()
                {
                    category_id = int.Parse(txtID.Text),
                    name = txtName.Text
                };
                data.CapNhatDanhMuc(category);
                message.Text = "Sửa thành công";
                
            }catch (Exception e1)
            {
                message.Text = "Lỗi trong quá trình sửa" +  e1.Message;
            }
        }
    }
}