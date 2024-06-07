<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BTLWebForm.Admin.CategoryManagement.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID="btnThem" Text="Thêm danh mục mới" runat="server" PostBackUrl="~/ThemNhanVien.aspx" CssClass="btn btn-success" />
    <h1>Danh sách danh mục</h1>
    <asp:GridView ID="dgv" AutoGenerateColumns="false" runat="server" OnSelectedIndexChanged="dgv_SelectedIndexChanged" CssClass="w-100">
        <Columns>
            <asp:BoundField HeaderText="Mã danh mục" DataField="category_id" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center"  />
            <asp:BoundField HeaderText="Tên danh mục" DataField="name"  ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:TemplateField HeaderText="Xóa"  ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnXoa" CommandName="Xóa" CommandArgument='<%#Bind("category_id") %>' Text="Xóa"
                        OnCommand="Xoa_Click" runat="server" CssClass="btn btn-google"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa"  ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center"  HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnSua" CommandName="Sửa" CommandArgument='<%#Bind("category_id") %>' Text="Sửa"
                        OnCommand="Sua_Click" runat="server" CssClass="btn btn-facebook" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
</asp:Content>
