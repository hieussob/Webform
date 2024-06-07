<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="BTLWebForm.Admin.CustomerManagement.EditCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        <div class="container">
    <h2>Sửa khách hàng</h2>
    <asp:Table ID="tbls" runat="server" CssClass="w-100">
        <asp:TableRow>
            <asp:TableCell>Mã khách hàng</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtID" runat="server" Enabled="false" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Họ</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtHo" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtTen" runat="server" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Email</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEm" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Mật khẩu</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMK" runat="server" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Địa chỉ</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
     <%--   <asp:TableRow>
            <asp:TableCell>Tên danh mục</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddpDM" runat="server" ></asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Ảnh sản phẩm</asp:TableCell>
            <asp:TableCell>
                <asp:Image ID="img" runat="server" Width="100" Height="100"></asp:Image>
                <asp:FileUpload ID="image" runat="server" />
            </asp:TableCell>
        </asp:TableRow>--%>
        <asp:TableRow>
            <asp:TableCell>Số điện thoại</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDT" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
    <br />
    <div style="margin-left:450px">
        <asp:Button ID="btnSua" OnClick="Sua_Click" runat="server" Text="Sửa"  CssClass="btn btn-success" Width="100px" />
    </div>
    <asp:Label ID="message" runat="server" ForeColor="Red" Font-Italic="true"></asp:Label>
</div>
</asp:Content>
