<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTLWebForm.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12">
                <div class="slider_content content_one">
                    <img src="../assets/img/slider/slider4.jpg" alt="">
                    <p>the wooboom clothing summer collection is back at half price</p>
                    <a href="shop.html" previewlistener="true">Discover Now</a>
                </div>
            </div>
        </div>
    </div>

    <section class="product_section womens_product">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2>Sản phẩm của chúng tôi</h2>
                        <p>Các sản phẩm thiết kế hiện đại,mới nhất</p>
                    </div>
                </div>
            </div>
            <div class="product_area">
                <div class="row">
                    <div class="col-12">
                        <div class="product_tab_button">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#clothing" role="tab" aria-controls="clothing" aria-selected="true">Women’s</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#handbag" role="tab" aria-controls="handbag" aria-selected="false">Men’s</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#shoes" role="tab" aria-controls="shoes" aria-selected="false">Kid's</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#accessories" role="tab" aria-controls="accessories" aria-selected="false">Shoes</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="tab-content" style="display: flex; flex-wrap: wrap; justify-content: space-evenly">
                    <asp:Repeater ID="ProductRepeater" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-3" style="width: 27%; display: inline-block;">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="DetailProduct.aspx" tabindex="0" style="width: 100px">
                                            <asp:Image ID="image" runat="server" ImageUrl='<%#  "~/wwwroot/img/img_product/"+ Eval("image") %>' />
                                        
                                        
                                        <div class="quick_button">
                                            <asp:LinkButton ID="btnXem" CommandName="Xem" CommandArgument='<%# Eval("product_id") %>' Text="Xem sản phẩm"
                                                OnCommand="Xem_Click"  runat="server" />
                                        </div>

                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html?productId=<%# Eval("product_id") %>" tabindex="0"><%# Eval("product_name") %></a></h3>
                                        <span class="current_price">£<%# Eval("price") %></span>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>
    </section>

</asp:Content>
