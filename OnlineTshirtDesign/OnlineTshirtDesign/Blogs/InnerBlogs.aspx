﻿<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="InnerBlogs.aspx.cs" Inherits="OnlineTshirtDesign.InnerBlogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <article>
        <div class="container">
            <div class="inner-blog blog">
                <div class="blog__slider">
                    <asp:Panel ID="PanelInnerBlogSlider" runat="server">
                        <div id="innerBlogSlider" class="flexslider">
                            <ul class="slides">
                                <li>
                                    <div class="inner-blog-section">
                                        <div>
                                            <h3 class="inner-blog-title text-center text-uppercase ">{{allBlogData.name}}</h3>
                                        </div>
                                        <asp:Image ID="ImageInnerBlogUser" ImageUrl="~/Images/Home/16.jpg" runat="server"></asp:Image>
                                        <!-- <p class="section-tp-bt-padd">{{innarBlogs.description}}</p> -->
                                        <!-- <div class="section-tp-bt-padd">
                        <img ng-src="{{innarBlogs.image |serverimage}}" alt="Blogger Photo" class="img-responsive">
                    </div> -->
                                        <div class="inner-blog-dynmc-content">
                                            <div class="section-tp-bt-padd">
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                                            </div>
                                        </div>
                                        <div class="section-tp-bt-padd inner-blog-change-content">
                                            <div class="flex-item-container">
                                                <div class="flex-item text-left">
                                                    <div class=" action relate">
                                                        <!-- <a href="#" class=" action"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> <span class="action-btn">Previous</span></a> -->
                                                        <ul class="flex-direction-nav">
                                                            <li class="flex-nav-prev"><a class="action flex-prev " href="#"></a></li>

                                                        </ul>
                                                        <div>
                                                            <span class="action-btn action-btn-prev">Previous</span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="flex-item ">
                                                    <div class="social-box">
                                                        <ul class="list-unstyled mb-0 flex-item-container">
                                                            <li>Share</li>
                                                            <li>
                                                                <asp:HyperLink ID="HyperLinkInnerBlogFb" NavigateUrl="#" runat="server"><i class="fa fa-facebook" aria-hidden="true"></i></asp:HyperLink>
                                                            </li>
                                                            <li>
                                                                <asp:HyperLink ID="HyperLinkInnerBlogTw" NavigateUrl="#" runat="server"><i class="fa fa-twitter" aria-hidden="true"></i></asp:HyperLink>
                                                            </li>
                                                            <li>
                                                                <asp:HyperLink ID="HyperLinkInnerBlogInsta" NavigateUrl="#" runat="server"><i class="fa fa-instagram" aria-hidden="true"></i></asp:HyperLink>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="flex-item text-right">
                                                    <div class="action relate">
                                                        <ul class="flex-direction-nav">
                                                            <li class="flex-nav-next">
                                                                <asp:HyperLink ID="HyperLinkInnerBlogFlexNext" runat="server" NavigateUrl="#" CssClass="action flex-next pull-right"></asp:HyperLink>
                                                                <%--<a class="action flex-next pull-right" href="#"></a>--%>

                                                            </li>
                                                        </ul>
                                                        <div>
                                                            <asp:Label ID="LabelInnerBlogNext" runat="server" CssClass="action-btn action-btn-next" Text="Next"></asp:Label>
                                                            <%--<span class="action-btn action-btn-next">Next</span>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li></li>
                            </ul>
                        </div>
                        <%--<flex-slider flex-slide="allBlogData in sliderBlogsData track by $index" animation="slide" item-width="" min-items="1" slideshow="false">
                    <li>
                        
                    </li>
                </flex-slider>--%>
                    </asp:Panel>
                    <div class="also-view">
                        <h3 class="inner-blog-title text-uppercase">Also view</h3>
                        <asp:Panel ID="PanelInnerBlogOther" runat="server">
                            <div class="flexslider innerblog-other">
                                <ul class="slides">
                                    <li>
                                        <div class="blog__banner-detail relate">
                                            <asp:Image ID="ImageInnerBlogOther" CssClass="img-responsive" ImageUrl="~/Images/Home/17.jpg" runat="server"></asp:Image>
                                            <div class="blog__desc">
                                                <h3 class="text-uppercase">{{blogs.name}}</h3>
                                                <div class="typedin-desc"></div>
                                                <p class="relate extra-content">
                                                    <asp:HyperLink ID="HyperLinkinnerBlogRead" NavigateUrl="#" runat="server">Read more</asp:HyperLink>

                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </asp:Panel>
                        <%--  <flex-slider flex-slide="blogs in removedBlog track by $index" animation="slide" item-width="300" min-items="3" slideshow-speed="2000">
                        </li>
                    </flex-slider>--%>
                    </div>
                </div>
            </div>
        </div>
    </article>
</asp:Content>