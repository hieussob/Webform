<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="StatisticRevenue.aspx.cs" Inherits="BTLWebForm.Admin.Statistics.StatisticRevenue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID="btnThem" Text="Thêm sản phẩm mới" runat="server" PostBackUrl="~/Admin/ProductManagement/CreateProduct.aspx" CssClass="btn btn-success" />
    <h1>Danh sách hóa đơn</h1>
    <asp:GridView ID="dgv" AutoGenerateColumns="false" runat="server" CssClass="w-100">
        <Columns>
            <asp:BoundField HeaderText="Mã đơn hàng" DataField="order_id" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="order_product_name" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Mã khách hàng" DataField="customer_id" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Ngày đặt" DataField="order_date" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Hình thức" DataField="payment" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:BoundField HeaderText="Trạng thái" DataField="status" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
            <asp:TemplateField HeaderText="Xem" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnXem" CommandName="Xem" CommandArgument='<%#Bind("order_id") %>' Text="Xem chi tiết"
                        OnCommand="Xem_Click" runat="server" CssClass="btn btn-light" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Xóa" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnXoa" CommandName="Xóa" CommandArgument='<%#Bind("order_id") %>' Text="Xóa"
                        OnCommand="Xoa_Click" runat="server" CssClass="btn btn-google" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
                <ItemTemplate>
                    <asp:Button ID="btnSua" CommandName="Sửa" CommandArgument='<%#Bind("order_id") %>' Text="Sửa"
                        OnCommand="Sua_Click" runat="server" CssClass="btn btn-facebook" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
</asp:Content>
