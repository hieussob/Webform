<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="DetailProduct.aspx.cs" Inherits="BTLWebForm.User.DetailProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product_details">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-5">
                    <div class="product-details-tab">

                        <div id="img-1" class="zoomWrapper single-zoom">
                            <a href="DetailProduct.aspx">
                                <asp:Image ID="image" runat="server" />
                            </a>
                        </div>
                        <div class="single-zoom-thumb">
                            <ul class="s-tab-zoom owl-carousel single-product-active owl-loaded owl-drag" id="gallery_01">

                                <div class="owl-stage-outer">
                                    <div class="owl-stage" style="transform: translate3d(-384px, 0px, 0px); transition: all 0s ease 0s; width: 1536px;">
                                        <%--  <div class="owl-item cloned" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product8.jpg" data-zoom-image="../assets/img/product/product8.jpg">
                                                            <img src="../assets/img/s-product/product2.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>
                                                <div class="owl-item cloned" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product2.jpg" data-zoom-image="../assets/img/product/product2.jpg">
                                                            <img src="../assets/img/s-product/product4.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>--%>
                                        <%--<div class="owl-item active" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product4.jpg" data-zoom-image="../assets/img/product/product4.jpg">
                                                            <img src="../assets/img/s-product/product3.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>
                                                <div class="owl-item active" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product6.jpg" data-zoom-image="../assets/img/product/product6.jpg">
                                                            <img src="../assets/img/s-product/product.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>
                                                <div class="owl-item" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product8.jpg" data-zoom-image="../assets/img/product/product8.jpg">
                                                            <img src="../assets/img/s-product/product2.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>
                                                <div class="owl-item" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product2.jpg" data-zoom-image="../assets/img/product/product2.jpg">
                                                            <img src="../assets/img/s-product/product4.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>
                                                <div class="owl-item cloned" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product4.jpg" data-zoom-image="../assets/img/product/product4.jpg">
                                                            <img src="../assets/img/s-product/product3.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>
                                                <div class="owl-item cloned" style="width: 177px; margin-right: 15px;">
                                                    <li>
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="../assets/img/product/product6.jpg" data-zoom-image="../assets/img/product/product6.jpg">
                                                            <img src="../assets/img/s-product/product.jpg" alt="zo-th-1">
                                                        </a>

                                                    </li>
                                                </div>--%>
                                    </div>
                                </div>
                                <div class="owl-nav">
                                    <div class="owl-prev"><i class="fa fa-angle-left"></i></div>
                                    <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                                </div>
                                <div class="owl-dots disabled"></div>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7">
                    <div class="product_d_right">


                        <h1 style="font-size: 30px">
                            <asp:Label ID="product_name" runat="server"></asp:Label></h1>
                        <div class=" product_ratting">
                            <ul>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li class="review"><a href="#">1 review </a></li>
                                <li class="review"><a href="#">Write a review </a></li>
                            </ul>
                        </div>
                        <div class="product_price">
                            <asp:Label runat="server" CssClass="current_price" ID="price"></asp:Label>
                        </div>
                        <div class="product_desc">
                            <asp:Label runat="server" ID="mota"></asp:Label>
                        </div>


                        <div class="product_variant color">
                            <h3>color</h3>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Text="Yellow" Value="X" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Red" Value="M"></asp:ListItem>
                                <asp:ListItem Text="Black" Value="L"></asp:ListItem>
                                <asp:ListItem Text="White" Value="XL"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="product_variant size">

                            <h3>size</h3>
                            <asp:DropDownList ID="ddpSize" runat="server">
                                <asp:ListItem Text="X" Value="X"></asp:ListItem>
                                <asp:ListItem Text="M" Value="M"></asp:ListItem>
                                <asp:ListItem Text="L" Value="L"></asp:ListItem>
                                <asp:ListItem Text="XL" Value="XL"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="product_variant quantity">

                            <label>quantity</label>
                            <asp:TextBox runat="server" ID="txtQuantity" Width="50px" Height="30px" BorderWidth="1" BorderColor="Black"></asp:TextBox>
                        </div>
                        <asp:Label runat="server" ID="product_id" Visible="false"></asp:Label>

                        
                            <asp:LinkButton ID="btnGioHang" CommandName="GioHang" CssClass="btn-danger" Text="Xem sản phẩm"
                                OnCommand="GioHang_Click" runat="server" />

                        <asp:Button runat="server" ID="btnThem" Text="Thêm" OnClick="Them_Click" CssClass="btn btn-success" />
                        
                        <div class=" product_d_action">
                            <ul>
                                <li><a href="#" title="Add to wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i>Add to Wish List</a></li>
                                <li><a href="#" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i>Compare this Product</a></li>
                            </ul>
                        </div>
                        <asp:Label ID="message" runat="server" Font-Italic="true" ForeColor="Red"></asp:Label>
                        <div class="priduct_social">
                            <h3>Share on:</h3>
                            <ul>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                                <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
