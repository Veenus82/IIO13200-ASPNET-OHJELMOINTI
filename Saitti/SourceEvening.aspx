<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SourceEvening.aspx.cs" Inherits="SourceEvening" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data transfer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Source Page</h1>
        Message to send: <asp:textbox ID="txtMessage" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Teksti on pakollinen" ControlToValidate="txtMessage"></asp:RequiredFieldValidator> <br />
        <asp:DropDownList ID="ddlMessages" runat="server" OnSelectedIndexChanged="ddlMessages_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList> <br />
        <asp:Button ID="btnQuery" runat="server" Text="Case1: Query String" OnClick="btnQuery_Click" /> <br />
        <asp:Button ID="btnSession" runat="server" Text="Case2: Session" OnClick="btnSession_Click" /> <br />
        <asp:Button ID="btnCookie" runat="server" Text="Case3: Cookie" OnClick="btnCookie_Click" /> <br />
        <asp:Button ID="btnPublicProperty" runat="server" Text="Case4: Public Property" OnClick="btnPublicProperty_Click" /> <br />

    </div>
    </form>
</body>
</html>
