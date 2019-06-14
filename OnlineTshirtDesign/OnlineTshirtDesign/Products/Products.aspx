﻿<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineTshirtDesign.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="products">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-body">T-shirts</div>
            </div>
            <div class="products-cat">
                <div class="row">
                    <div class="col-md-6">
                        <asp:HyperLink ID="HpLinkShortSleeve" NavigateUrl="~/Products/ProductShortSleeve/ShortSleeveProduct.aspx" runat="server">
                            <asp:Image ID="ImgShortSleeve" ImageUrl="~/Images/Products/ShortSleeve.jpg" runat="server" />
                        </asp:HyperLink>
                    </div>
                    <div class="col-md-6">
                        <asp:HyperLink ID="HpLinkLongSleeve" NavigateUrl="~/LongSleeveProduct.aspx" runat="server">
                            <asp:Image ID="ImgLongSleeve" Height="495px" ImageUrl="~/Images/Products/FullSleeve.jpg" runat="server" />
                        </asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
