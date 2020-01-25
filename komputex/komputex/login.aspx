<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:komputexConnectionString2 %>" SelectCommand="SELECT * FROM [Uzytkownicy]"></asp:SqlDataSource>
            <asp:Label ID="loginLabel" runat="server" Text="Login: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="passwordLabel" runat="server" Text="Hasło: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zaloguj" />
            <br />
            <asp:Label ID="info" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
