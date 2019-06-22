﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminHeader.ascx.cs" Inherits="OnlineTshirtDesign.UserControl.AdminHeader" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Admin Panel</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li>
                        <asp:HyperLink ID="HypLinkHomeBanner" NavigateUrl="~/Account/AdminOrder.aspx" runat="server">Home Baneer</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HypLinkUserOrder" runat="server">HyperLink</asp:HyperLink>
                    </li>
                </ul>
            </li>
            <li><a href="#">Page 2</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <%--<li><a ><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>--%>
            <li><a href="../Account/AdminLogin.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
        </ul>
    </div>
</nav>
