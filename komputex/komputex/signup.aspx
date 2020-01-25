<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:komputexConnectionString2 %>" SelectCommand="SELECT * FROM [Uzytkownicy]"></asp:SqlDataSource>
			<asp:Label ID="Label1" runat="server" Text="Imie"></asp:Label>
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    	<p>
			<asp:Label ID="Label2" runat="server" Text="Nazwisko"></asp:Label>
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Label ID="Label3" runat="server" Text="Login"></asp:Label>
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Label ID="Label4" runat="server" Text="Hasło"></asp:Label>
			<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zarejestruj" />
		</p>
		<p>
			<asp:Label ID="Label5" runat="server"></asp:Label>
		</p>
    </form>
</body>
</html>
