<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="BTLWebForm.Admin.ProductManagement.ListProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID="btnThem" Text="Thêm sản phẩm mới" runat="server" PostBackUrl="~/Admin/ProductManagement/CreateProduct.aspx" CssClass="btn btn-success" />
    <h1>Danh sách sản phẩm</h1>
    <asp:GridView ID="dgv" AutoGenerateColumns="false" runat="server" CssClass="w-100">
        <Columns>
            <asp:BoundField HeaderText="Mã sản phẩm" DataField="product_id" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="product_name" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Mã SKU" DataField="SKU" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Mô tả" DataField="description" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Giá" DataField="price" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Kho" DataField="stock" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Tên danh mục" DataField="Category_category_id" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Ngày sản xuất" DataField="product_date" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:TemplateField HeaderText="Ảnh" HeaderStyle-CssClass="p-5 text-center" ItemStyle-CssClass="text-center">
                <ItemTemplate>
                    <asp:Image ID="image" runat="server" ImageUrl=' <%# "~/wwwroot/img/img_product/"+  Eval("image") %>' Width="100" Height="100" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Xóa" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnXoa" CommandName="Xóa" CommandArgument='<%#Bind("product_id") %>' Text="Xóa"
                        OnCommand="Xoa_Click" runat="server" CssClass="btn btn-google" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnSua" CommandName="Sửa" CommandArgument='<%#Bind("product_id") %>' Text="Sửa"
                        OnCommand="Sua_Click" runat="server" CssClass="btn btn-facebook" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
</asp:Content>
