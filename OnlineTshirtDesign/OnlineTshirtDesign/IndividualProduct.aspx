<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="IndividualProduct.aspx.cs" Inherits="OnlineTshirtDesign.IndividualProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="individual-container relate">
            <div class="row">
                <div class="col-md-4 col-xs-12 padd-rt0">
                    <div class="individual-first relate visible-lg">
                        <div class="product-img">
                            <img ng-repeat="image in productImages track by $index" ng-elevate-zoom ng-src="{{image.image | serverimage}}" data-zoom-image="{{image.image | serverimage}}"
                                class="img-responsive bg" ng-if="$index == selectedImageIndex">
                        </div>
                        <div class="individual-first__zoom">
                            <img ng-src="img/individual/zoom.png" alt="zoom" class="img-responsive">
                        </div>
                    </div>
                    <div class="individual-first relate hidden-lg">
                        <div class="product-img">
                            <img ng-repeat="image in productImages track by $index" ng-src="{{image.image | serverimage}}" class="img-responsive bg"
                                ng-if="$index == selectedImageIndex">
                        </div>
                    </div>
                    <div class="slider2 relate">
                        <flex-slider flex-slide="image in productImages track by $index" prev-text="" next-text="" animation="slide" item-width="70"
                            item-margin="15" min-items="3">
                        <li class="relate">
                            <div class="customer-choice__banner-detail relate" style="cursor:pointer;">
                                <img ng-src="{{image.image | serverimage}}" alt="" class="img-responsive" ng-click="changeImage($index)">
                            </div>
                        </li>
                    </flex-slider>
                    </div>
                </div>
                </div>
            </div>
         </div>
</asp:Content>
