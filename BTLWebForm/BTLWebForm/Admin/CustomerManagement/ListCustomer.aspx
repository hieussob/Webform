<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ListCustomer.aspx.cs" Inherits="BTLWebForm.Admin.CustomerManagement.ListCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <asp:Button ID="btnThem" Text="Thêm khách hàng mới" runat="server" PostBackUrl="~/Admin/CustomerManagement/CreateCustomer.aspx" CssClass="btn btn-success" />
 <h1>Danh sách khách hàng</h1>
 <asp:GridView ID="dgv" AutoGenerateColumns="false" runat="server" CssClass="w-100">
     <Columns>
         <asp:BoundField HeaderText="Mã khách hàng" DataField="customer_id" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
         <asp:BoundField HeaderText="Họ" DataField="first_name" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
         <asp:BoundField HeaderText="Tên" DataField="last_name" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
         <asp:BoundField HeaderText="Email" DataField="email" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
         <asp:BoundField HeaderText="Mật khẩu" DataField="password" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
         <asp:BoundField HeaderText="Địa chỉ" DataField="address" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
         <asp:BoundField HeaderText="Số điện thoại" DataField="phone_number" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass="p-5; text-center" />
       
         <%--<asp:TemplateField HeaderText="Ảnh" HeaderStyle-CssClass="p-5 text-center" ItemStyle-CssClass="text-center">
             <ItemTemplate>
                 <asp:Image ID="image" runat="server" ImageUrl=' <%# "~/wwwroot/img/img_product/"+  Eval("image") %>' Width="100" Height="100" />
             </ItemTemplate>
         </asp:TemplateField>--%>

         <asp:TemplateField HeaderText="Xóa" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
             <ItemTemplate>
                 <asp:Button ID="btnXoa" CommandName="Xóa" CommandArgument='<%#Bind("customer_id") %>' Text="Xóa"
                     OnCommand="Xoa_Click" runat="server" CssClass="btn btn-google" />
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Sửa" ItemStyle-CssClass=" text-center" HeaderStyle-CssClass=" text-center" HeaderStyle-Width="60px">
             <ItemTemplate>
                 <asp:Button ID="btnSua" CommandName="Sửa" CommandArgument='<%#Bind("customer_id") %>' Text="Sửa"
                     OnCommand="Sua_Click" runat="server" CssClass="btn btn-facebook" />
             </ItemTemplate>
         </asp:TemplateField>
     </Columns>

 </asp:GridView>
</asp:Content>
