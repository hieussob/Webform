using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.Admin.CategoryManagement
{
    public partial class CreateCategory : System.Web.UI.Page
    {
        DataUtilsCategory data = new DataUtilsCategory();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                Category category = new Category()
                {
                    name = txtname.Text
                };
                data.Them(category);
                message.Text = "Thêm thành công";
            }
            catch (Exception ex)
            {
                message.Text = "Lỗi trong quá trình thêm: " +ex.Message;
            }
        }
    }
}