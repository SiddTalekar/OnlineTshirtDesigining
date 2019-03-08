<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineDesigining.Master" AutoEventWireup="true" CodeBehind="IndividualProduct.aspx.cs" Inherits="OnlineTshirtDesign.IndividualProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-nav">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Products</a></li>
            <li class="active">Accessories</li>
        </ul>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="product-cat">
                    <div class="product-cat-title">
                        <h3>
                            <asp:Label ID="LblProductCatName" runat="server" Text="Label"></asp:Label>
                        </h3>
                    </div>
                    <p>
                        <asp:Label ID="LblProductCatDesc" runat="server">A great look. Priced right. And this t‑shirt feels softer with every wash ‑ it's no wonder our customers love this "ultra" popular style!</asp:Label>

                    </p>

                    <div class="well">
                        <asp:Button ID="BtnProductDesign" CssClass="btn btn--brown btn-block" runat="server" Text="Start Desigining" />
                    </div>
                    <div class="product-avail-colr">
                        <h4>AVAILABLE COLORS</h4>
                        <hr />
                    </div>
                    <div class="product-colr-selct">

                        <asp:CheckBoxList ID="ChkBoxLstProductColr" runat="server">

                        </asp:CheckBoxList>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
