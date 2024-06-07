<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="BTLWebForm.Admin.CustomerManagement.CreateCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
    <h2>Thêm khách hàng mới</h2>
    <asp:Table ID="tbl" runat="server" CssClass="w-100; container">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server">Họ</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtHo" runat="server" Width="400"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Tên</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtTen" runat="server" Width="400"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Email</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" Width="400"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Mật khẩu</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMK" runat="server" Width="400" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Địa chỉ</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDC" runat="server" Width="400"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <%--<asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Tên danh mục</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddpCate" runat="server" Width="400"></asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Ảnh</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="imgAnh" runat="server" Width="400"></asp:TextBox>
                <asp:FileUpload ID="img" runat="server" />
            </asp:TableCell>
        </asp:TableRow>--%>
        <asp:TableRow>
            <asp:TableCell>
    <asp:Label runat="server">Só điện thoại</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDT" runat="server" Width="400"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <div style="margin-left: 450px">
        <asp:Button ID="btnThem" OnClick="btnThem_Click" runat="server" Text="Thêm khách hàng" CssClass="btn btn-success" />
    </div>
    <p>
        <asp:Label ID="message" ForeColor="Red" Font-Italic="true" runat="server"></asp:Label>
    </p>

</div>
</asp:Content>
