<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="AdminOrder.aspx.cs" Inherits="OnlineTshirtDesign.Account.AdminOrder" %>

<%@ MasterType VirtualPath="~/OnlineDesigining.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:Panel CssClass="well well-lg" runat="server">
            <asp:Label Text="Welcome Siddhesh" runat="server" />
            <asp:Button ID="AdminLogout" Text="Log out" CssClass="btn btn--brown pull-right" runat="server" />
        </asp:Panel>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:FileUpload ID="AdminUpload" CssClass="form-control" runat="server" />

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox ID="TboxBannerName" CssClass="form-control" Text="Banner Text" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox ID="TboxBannerDesc" CssClass="form-control" Text="Banner Desc" runat="server"></asp:TextBox>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 text-center">
                <p>
                    <asp:Button ID="BtnAddHomeImg" UseSubmitBehavior="false" CssClass="btn btn--brown" runat="server" OnClick="BtnAddHomeImg_Click" Text="Add" />

                </p>

            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridHomeBannerData" CssClass="table table-hover" runat="server" PageSize="5" AllowPaging="true" AutoGenerateColumns="false" OnRowDataBound="GridHomeBannerData_RowDataBound" DataSource="SqlDataScHomeBanner" DataKeyNames="HomeImgId">
                    <Columns>
                        <%--<asp:BoundField DataField="HomeImg" ReadOnly="true" HeaderText="Home Banner Image" />--%>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="GridHomeBannerImg" Width="255px" CssClass="img-responsive" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:TemplateField HeaderText="Image Name">
                            <ItemTemplate>
                                <i><%# Eval("HomeBannerName") %> </i> 
                            </ItemTemplate>
                            <EditItemTemplate>
                               <
                            </EditItemTemplate>
                        </asp:TemplateField>--%>

                        <asp:BoundField DataField="HomeBannerName" HeaderText="Image Name" />
                        <asp:BoundField DataField="HomeBannerDesc" HeaderText="Banner Description" />
                        <asp:CommandField ShowEditButton="true"  ButtonType="Button" ControlStyle-CssClass="btn btn--brown" />
                        <asp:TemplateField HeaderText="Change Image" Visible="false">
                            <ItemTemplate>
                                <asp:FileUpload ID="AdminNewUpload" CssClass="form-control" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataScHomeBanner" runat="server" ProviderName="MySql.Data.MySqlClient" ConnectionString="<%$ ConnectionStrings:online_tshirt_designing %>" SelectCommand="SELECT * FROM home_banner" UpdateCommand="UPDATE home_banner  SET HomeBannerName = @HomeBannerName, HomeBannerDesc = @HomeBannerDesc WHERE HomeImgId = @HomeImgId">
                    
                </asp:SqlDataSource>
            </div>
        </div>
        <asp:Label ID="LblDatabaseError" runat="server" />
    </div>
</asp:Content>
