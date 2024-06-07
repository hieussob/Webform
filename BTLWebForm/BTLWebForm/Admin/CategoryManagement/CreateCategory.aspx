<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateCategory.aspx.cs" Inherits="BTLWebForm.Admin.CategoryManagement.CreateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
            <h2>Thêm danh mục sản phẩm</h2>
            <asp:Table ID="tbl" runat="server" CssClass="w-100; container" >
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server">Tên danh mục</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    </asp:TableRow>     
            </asp:Table>
        <br />
            <div style="margin-left: 450px">
                <asp:Button ID="btnThem" OnClick="btnThem_Click" runat="server" Text="Thêm danh mục" CssClass="btn btn-success"  />
            </div>
            <p>
                <asp:Label ID ="message" ForeColor="Red" Font-Italic="true" runat="server"></asp:Label>
            </p>

        </div>
</asp:Content>
