﻿<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="UserCart.aspx.cs" Inherits="OnlineTshirtDesign.UserCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="bg-mycart">
            <div class="mycart-img">
                <asp:Image ID="ImageMyCartBg" ImageUrl="~/Images/Cart/mycart-bg.jpg" CssClass=" img-responsive" runat="server" />
            </div>
        </div>
        <div class="container">
            <div class="mycart-container">
                <div class="table-responsive">
                    <table class="table mycart-table">
                        <caption class="text-uppercase">
                            there are items in your cart which are currently not avaliable.please remove to proceed to
                        checkout
                   
                        </caption>
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>COLOR</th>
                                <th>MRP</th>
                                <th>SIZE</th>
                                <th>QUANTITY</th>
                                <th>PRICE</th>
                                <th>DISCOUNT PRICE</th>
                                <!--<th>GST</th>-->
                                <th>SUBTOTAL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2" class="item-block">
                                    <div class="item relate">
                                        <img  src="" alt="" class="img-responsive item__img">
                                        <div class="mycart-info">
                                            <p class="item__title1">{{product.product.productName}}</p>
                                            <!--<a class="linking" style="color: #341314" ng-click="openCoupon(product.product)">Check Offer</a>-->
                                        </div>
                                        <div class="outofstock" ng-if="product.quantity>product.product.quantity">
                                            OUT OF
                                        STOCK
                                        </div>
                                    </div>
                                </td>
                                <td>{{color.name}}</td>
                                <td>&#x20b9 &nbsp;{{product.mrp}}</td>
                                <td>{{product.ize}}</td>
                                <td>
                                    <div class="plus-minus-btn">
                                        <a >
                                            <i class="fa fa-minus display-inblock square__bg" aria-hidden="true"></i>
                                        </a>
                                        <div class="display-inblock">
                                            <div>
                                                <div class="form-group marg0">
                                                    <input type="text" readonly class="form-control quantity__input"
                                                        ng-model="product.quantity">
                                                </div>
                                            </div>
                                        </div>
                                        <a ng-click="updateQuantity($index, 1)" ng-if="product.quantity< product.product.quantity">
                                            <i class="fa fa-plus display-inblock square__bg" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </td>
                                <td>&#x20b9 &nbsp;{{0}} </td>
                                <td ng-if="product.product.discountApplicable&&product.product.discountPriceOfProduct>0">&#x20b9
                                &nbsp;{{product.product.discountPriceOfProduct|number:0}}</td>
                                <td ng-if="product.product.discountApplicable&&product.product.discountPriceOfProduct==0">&#x20b9
                                &nbsp;0</td>
                                <!--<td ng-if="product.product.discountApplicable&&product.product.discountPriceOfProduct==0">&#x20b9 &nbsp;{{product.product.discountPriceOfProductApplied|number:0}}</td>-->
                                <td ng-if="!product.product.discountApplicable">&#x20b9 &nbsp;0</td>
                                <!--<td>&#x20b9 &nbsp;{{product.product.gst|number:0}}</td>-->
                                <!--<td ng-if="product.product.price < 999">5%</td>-->
                                <!--<td ng-if="!product.product.discountApplicable">{{product.product.price * product.quantity * .12|number:0}}</td>-->
                                <td ng-if="product.product.discountApplicable">&#x20b9
                                &nbsp;{{product.product.priceWithDiscount|number:0}}</td>
                                <td ng-if="!product.product.discountApplicable">&#x20b9 &nbsp;{{product.product.price*
                                product.quantity |number:0}}</td>
                            </tr>
                            <tr>
                                <td colspan="7" class="td-border">
                                    <div class="pull-right">
                                        <button class=" btn text-uppercase wishlist--btn" ng-click="addToWishlist(product)">
                                            <i class="fa fa-heart" aria-hidden="true"></i>ADD TO WISHLIST</button>
                                        <button class="btn text-uppercase remove--btn" ng-click="removeProductFromCart(mycartTable._id, product.product._id)">
                                            <i
                                                class="fa fa-trash" aria-hidden="true"></i>REMOVE</button>
                                    </div>
                                </td>

                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="mycart-footer">
                    <div class="pull-left">
                        <a class="linking" style="color: #341314" ng-click="openCoupon()">Check Offer</a>
                    </div>
                    <div class="pull-right">
                        <div class="text-right inline-block">
                            <p>ITEM(S) SUBTOTAL :</p>
                            <p>SHIPPING:</p>
                            <p>MEMBER'S DISCOUNT:</p>
                            <p>TOTAL:</p>
                            <p>GST:</p>
                            <p>GRAND TOTAL:</p>
                        </div>
                        <div class="inline-block">
                            <p>&#x20b9 {{total}}</p>
                            <p>&#x20b9 0</p>
                            <p>&#x20b9 {{grandTotalAfterDiscount}}</p>
                            <p>&#x20b9 {{total-grandTotalAfterDiscount}}</p>
                            <!--<p ng-if="!discountApplicableforCart">&#x20b9 0</p>-->
                            <p>&#x20b9 {{productGst}}</p>
                            <p>&#x20b9 {{total-grandTotalAfterDiscount+productGst}}</p>
                            <!--<p ng-if="!discountApplicableforCart">&#x20b9 {{total-grandTotalAfterDiscount|number:0}}</p>-->
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="pull-right margin-15">
                        <button class="btn text-uppercase shop--btn" ui-sref="listing-page">Continue shopping</button>
                        <button class="btn text-uppercase checkout--btn" ng-click="redirectToCheckot()">checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
