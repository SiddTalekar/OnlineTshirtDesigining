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
                <asp:GridView ID="GridHomeBannerData" runat="server" PageSize="5" AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="HomeImgId">
                    <Columns>
                        <asp:BoundField DataField="HomeImg" ReadOnly="true" HeaderText="Home Banner Image" />
                        <asp:BoundField DataField="HomeBannerName" HeaderText="Image Name" />
                        <asp:BoundField DataField="HomeBannerDesc" HeaderText="Banner Description" />
                        <asp:CommandField ShowEditButton="true" />
                        <asp:TemplateField HeaderText="Change Image">
                            <ItemTemplate>
                                <asp:FileUpload ID="AdminNewUpload" CssClass="form-control" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <asp:Label  ID="LblDatabaseError" runat="server" />
    </div>
</asp:Content>
