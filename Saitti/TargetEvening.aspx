﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TargetEvening.aspx.cs" Inherits="TargetEvening" %>
<%@ PreviousPageType VirtualPath="~/SourceEvening.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data transfer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Target Page</h1>
        The Message sent to this page is: <div id="mytext" runat="server" />
    </div>
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/SourceEvening.aspx" runat="server">takaisin</asp:HyperLink>
    </form>
</body>
</html>
