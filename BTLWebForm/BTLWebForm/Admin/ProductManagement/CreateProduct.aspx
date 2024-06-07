<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateProduct.aspx.cs" Inherits="BTLWebForm.Admin.ProductManagement.CreateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        <h2>Thêm sản phẩm</h2>
        <asp:Table ID="tbl" runat="server" CssClass="w-100; container">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Tên sản phẩm</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtname" runat="server" Width="400"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
        <asp:Label runat="server">Mã SKU</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSKU" runat="server" Width="400"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
        <asp:Label runat="server">Mô tả</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" runat="server" Width="400"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
        <asp:Label runat="server">Giá</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtGia" runat="server" Width="400" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
        <asp:Label runat="server">Tên kho</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStock" runat="server" Width="400"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
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
                    <%--<asp:TextBox ID="imgAnh" runat="server" Width="400"></asp:TextBox>--%>
                    <asp:FileUpload ID="img" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
        <asp:Label runat="server">Ngày sản xuất</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDate" runat="server" Width="400"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div style="margin-left: 450px">
            <asp:Button ID="btnThem" OnClick="btnThem_Click" runat="server" Text="Thêm danh mục" CssClass="btn btn-success" />
        </div>
        <p>
            <asp:Label ID="message" ForeColor="Red" Font-Italic="true" runat="server"></asp:Label>
        </p>

    </div>
</asp:Content>
