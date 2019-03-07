<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="ShortSleeveProduct.aspx.cs" Inherits="OnlineTshirtDesign.ShortSleeveProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="short-sleeve">
            <div class="container">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h3>Short Sleeve T-shirts</h3>
                        <div class="short-sleeve-filter">
                            <asp:LinkButton ID="LnkBtnProductFilter" runat="server">
                                <asp:Image ID="ImgFilter" ImageUrl="~/Images/Products/Filter.png" ImageAlign="Top" runat="server" />
                                <asp:Label ID="LblFilter" runat="server" Text=" Filters"></asp:Label>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>

                <asp:MultiView ID="MlViewFilterChoice" ActiveViewIndex="0" runat="server">
                    <asp:View ID="ViewWithFilter" runat="server">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <asp:HyperLink ID="HpLinkFilterStyle" data-toggle="collapse" NavigateUrl="#FilterStyle" runat="server">Style</asp:HyperLink>

                                        </div>
                                        <div class="panel-body">
                                            <div id="FilterStyle" class="collapse">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <asp:HyperLink ID="HpLinkFilterColor" NavigateUrl="#FilterColor" data-toggle="collapse" runat="server">Color Family</asp:HyperLink>

                                        </div>
                                        <div class="panel-body">
                                            <div id="FilterColor" class="collapse">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <asp:HyperLink ID="HpLinkFilterFeature" NavigateUrl="#FilterFeature" data-toggle="collapse" runat="server">Features</asp:HyperLink>
                                        </div>
                                        <div class="panel-body">
                                            <div id="FilterFeature" class="collapse">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-6">
                                          Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                    </div>
                                    <div class="col-md-6">
                                           Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="ViewWithoutFilter" runat="server">
                    </asp:View>
                </asp:MultiView>

            </div>
        </div>
    </section>
</asp:Content>
