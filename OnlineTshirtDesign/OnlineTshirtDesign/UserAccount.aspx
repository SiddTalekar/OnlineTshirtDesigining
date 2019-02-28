<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="OnlineTshirtDesign.UserAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="usr-account">
        <div>
            <img src="Images/UserAccount/myaccount-banner.jpg" alt="BannerImage" class="img-responsive">
        </div>
        <div class="container">
            <div class="content-spacing">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="list-checkout">
                            <div class="checkout-tab-btn">
                                <asp:LinkButton ID="LinkButtonUserProf" CssClass="btn btn--list" runat="server">PROFILE</asp:LinkButton>

                            </div>
                            <div class="checkout-tab-btn">
                                <asp:LinkButton ID="LinkButtonUserAddr" CssClass="btn btn--list" runat="server">MANAGE
                                ADDRESS</asp:LinkButton>
                            </div>
                            <div class="checkout-tab-btn">
                                <asp:LinkButton ID="LinkButtonUserReturn" CssClass="btn order-list--btn text-uppercase" runat="server">Return/Exchange</asp:LinkButton>
                            </div>
                            <div class="checkout-tab-btn">
                                <asp:LinkButton ID="LinkButtonUserCancel" CssClass="btn order-list--btn text-uppercase" runat="server">Cancelled</asp:LinkButton>
                            </div>
                            <div class="checkout-tab-btn">
                                <asp:LinkButton ID="LinkButtonUserWishlist" CssClass="btn btn--list text-uppercase" runat="server">WISHLIST</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <!--To open profile Tab-->
                    <asp:Panel ID="PanelUserProf" CssClass="prof-tab" runat="server">
                        <asp:MultiView ID="MultiViewUserChoice" ActiveViewIndex="0" runat="server">
                            <asp:View ID="ViewUserProf" runat="server">
                                <div class="col-md-9 col-sm-12  col-xs-12">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12  col-xs-12">
                                            <div class="userdtl-main">
                                                <asp:MultiView ID="MultiViewUserDtl" ActiveViewIndex="0" runat="server">

                                                    <asp:View ID="ViewUserDtlSaved" runat="server">
                                                        <asp:Panel ID="PanelUserDtlSave" runat="server">
                                                            <div class="usrdtl-title">
                                                                <h3 class="tab-title">YOUR DETAILS
                                                     <asp:HyperLink ID="HyperLinkUserEdit" NavigateUrl="#" CssClass-="linking" runat="server"><span>edit</span> </asp:HyperLink>
                                                                </h3>
                                                            </div>
                                                            <div class="usrdtl">
                                                                <p class="usrdtl-info">
                                                                    Name: <span class="text-capitalize left-space">{{userDetails.firstName}}
                                                {{userDetails.lastName}}</span><br>
                                                                    Email id: <span class="text-capitalize left-space">{{userDetails.email}}</span><br>
                                                                    Mobile:
                                           
                                                    <span class="text-capitalize left-space">{{userDetails.mobile}}</span>
                                                                </p>

                                                                <p class="usrdtl-info">
                                                                    Want to change your password? 
                                                        <asp:HyperLink ID="HyperLink1" CssClass="linking" runat="server">CLICK HERE</asp:HyperLink>

                                                                </p>
                                                                <p>
                                                                    <asp:Button ID="Button1" CommandName="SwitchViewByID" CommandArgument="ViewUserDtlEdit" runat="server" Text="Edit" />
                                                                </p>
                                                            </div>
                                                        </asp:Panel>
                                                    </asp:View>

                                                    <asp:View ID="ViewUserDtlEdit" runat="server">
                                                        <div class="userdtl-main">
                                                            <h3 class="tab-title">YOUR DETAILS 
                                                   
                                                        <asp:HyperLink ID="HyperLinkuserSave" NavigateUrl="#" CssClass="linking" runat="server">
                                                            <asp:Label ID="LabelUserSave" runat="server" Text="Save"></asp:Label>
                                                        </asp:HyperLink>

                                                            </h3>
                                                        </div>
                                                        <asp:Panel ID="PanelUserDtlEdit" runat="server">
                                                            <div class="row">
                                                                <div class="col-md-12 col-sm-12 col-xs-12 edit-dtl">
                                                                    <div class="row">
                                                                        <div class="customized-form">
                                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                <div class="form-group">
                                                                                    <input type="text" placeholder="First Name" class="form-control ">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                <div class="form-group">
                                                                                    <input type="text" placeholder="Last Name" class="form-control ">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6 col-sm-6 col-xs-12 ">
                                                                                <div class="form-group">
                                                                                    <input type="text" placeholder="Mobile No" class="form-control ">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                <div class="form-group">
                                                                                    <input type="email" placeholder="Email Address" class="form-control ">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p>
                                                                <asp:Button ID="Button2" CommandName="SwitchViewByID" CommandArgument="ViewUserDtlSaved" runat="server" Text="Save" />
                                                            </p>
                                                        </asp:Panel>
                                                    </asp:View>
                                                </asp:MultiView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>

                            <asp:View ID="ViewUserAddr" runat="server">
                                <h2>In view 2</h2>
                            </asp:View>
                            <asp:View ID="ViewUserReturn" runat="server">
                            </asp:View>
                        </asp:MultiView>



                    </asp:Panel>
                    <asp:Panel ID="PanelUserAddr" runat="server"></asp:Panel>
                    <asp:Panel ID="PanelUserReturn" runat="server"></asp:Panel>
                    <asp:Panel ID="PanelUserCancel" runat="server"></asp:Panel>
                    <asp:Panel ID="PaneluserWishlist" runat="server"></asp:Panel>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
