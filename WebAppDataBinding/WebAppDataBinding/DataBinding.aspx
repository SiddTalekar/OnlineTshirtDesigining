<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBinding.aspx.cs" Inherits="WebAppDataBinding.DataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Binding</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <p>
         You have performed <%# Transaction %> on 
         <%#Request.Browser.Browser %> browser
     </p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            &nbsp;&nbsp; 
            <asp:Button ID="Button2" runat="server" Text="Get List Value" OnClick="Button2_Click" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
