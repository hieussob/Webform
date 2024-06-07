<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="BTLWebForm.Admin.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
        <div class="container">
            <h2>Sửa danh mục</h2>
            <asp:Table ID="tbls" runat="server" CssClass="w-100">
                <asp:TableRow>
                    <asp:TableCell>Mã danh mục</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtID" runat="server" Enabled="false"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Tên danh mục</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
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
