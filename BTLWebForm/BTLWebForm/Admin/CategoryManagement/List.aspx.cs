using BTLWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebForm.Admin
{
    public partial class List : System.Web.UI.Page
    {
        List<Category> categories = new List<Category>();
        DataUtils data = new DataUtils();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThi();
        }

        private void HienThi()
        {
            dgv.DataSource = data.DanhSachDanhMuc();
            DataBind();
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "Xóa")
            {
                int category_id = int.Parse(e.CommandArgument.ToString());
                data.XoaDanhMuc(category_id);
                HienThi();
            }
        }

        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Sửa")
            {
                int category_id = int.Parse(e.CommandArgument.ToString());
                Category category = data.LayRa1DanhMuc(category_id);
                Session["cate"] = category;
                Response.Redirect("EditCategory.aspx");
            }
        }

        protected void dgv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}