<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="BTLWebForm.Admin.ProductManagement.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
    <h2>Sửa sản phẩm</h2>
    <asp:Table ID="tbls" runat="server" CssClass="w-100">
        <asp:TableRow>
            <asp:TableCell>Mã sản phẩm</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtID" runat="server" Enabled="false" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên sản phẩm</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>SKU</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtSKU" runat="server" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Mô tả</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtdes" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Giá</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtGia" runat="server" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Kho</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtKho" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
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
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Ngày sản xuất</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
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
