<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="OnlineTshirtDesign.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="checkout">
        <div>
            <asp:Image ID="ImageCheckoutBanner" CssClass="img-responsive" ImageUrl="~/Images/Checkout/checkout-bg.jpg" AlternateText="BannerImage" runat="server" />
        </div>
        <div>
            <div class="container">
                <div class="content-spacing">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="list-checkout">
                                <div class="checkout-tab-btn">
                                    <asp:Button ID="ButtonLogin" runat="server" Text="Login" CssClass="btn btn--list" />

                                </div>
                                <div class="checkout-tab-btn">
                                    <asp:Button ID="ButtonOrder" CssClass="btn btn--list disabled" runat="server" Text="Order" />

                                </div>
                                <div class="checkout-tab-btn">
                                    <asp:Button ID="ButtonDtls" runat="server" CssClass="btn btn--list disabled" Text="Details" />

                                </div>
                                <div class="checkout-tab-btn">
                                    <asp:Button ID="ButtonPayment" CssClass="btn btn--list disabled" runat="server" Text="Payment" />
                                </div>
                            </div>
                        </div>
                        <asp:MultiView ID="MultiViewCheckout" ActiveViewIndex="0" runat="server">
                            <asp:View ID="ViewLogin" runat="server">

                                <div class="col-md-3 col-md-offset-1 col-sm-6">
                                    <div class="customized-form ">
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxUserEmail" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegValidEmail" runat="server" ErrorMessage="This email is missing the @ symbol" Text="Email" OnInit="RegValidEmail_Init" ControlToValidate="TextBoxUserEmail">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxuserPwd" CssClass="form-control" TextMode="Password" Text="Password" runat="server"></asp:TextBox>
                                            <p class="pull-right forgot__checkout">
                                                <asp:HyperLink ID="HyperLinkForgotPwd" runat="server">Forgot Password?</asp:HyperLink>
                                            </p>
                                        </div>
                                        <div>
                                            <asp:Button ID="ButtonUserLogIn" runat="server" CssClass="btn btn--login btn-block" Text="login" data-toggle="popover" />
                                        </div>
                                        <p class="user-dicision border-line">or</p>
                                        <div class="social-icons">
                                            <ul class="list-unstyled list-inline">
                                                <li>
                                                    <div class="social-icons__list fb">
                                                        <asp:HyperLink ID="HyperLinkFb" NavigateUrl="#" runat="server"> <i class="fa fa-facebook" aria-hidden="true"></i></asp:HyperLink>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="social-icons__list tw">
                                                        <asp:HyperLink NavigateUrl="#" ID="HyperLinkTwitt" runat="server"><i class="fa fa-twitter" aria-hidden="true"></i></asp:HyperLink>

                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="social-icons__list gp">
                                                        <asp:HyperLink NavigateUrl="#" ID="HyperLinkGoogPlus" runat="server">                                                                <i class="fa fa-google-plus" aria-hidden="true"></i>
                                                        </asp:HyperLink>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="Vieworder" runat="server">
                            </asp:View>
                            <asp:View ID="ViewDtls" runat="server">
                            </asp:View>
                            <asp:View ID="ViewPayment" runat="server">
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
