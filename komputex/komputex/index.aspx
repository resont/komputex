<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:komputexConnectionString2 %>" SelectCommand="select p.Nazwa, p.Cena, p.Ilosc, t.Nazwa as Typ from Produkty p inner join Typy t ON p.Typ = t.Id_t"></asp:SqlDataSource>
            
            
            <asp:Label ID="Label1" runat="server"></asp:Label>
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Wyloguj" Visible="False" />
			<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Zaloguj" />
			<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Zarejestruj" />
			<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Admin Panel" Visible="False" />
            
            
            <table border="1">
                <tr style="background-color:#004080;color:White;" >
                <td> ID </td>                        
                <td> Nazwa </td>            
                <td> Cena </td>
                <td> Ilość </td>
                <td> Typ </td>
                <td> Kupowanie </td>
            </tr>

        <%=getWhileLoopData()%>

        </table>



            
            


            <br />
            


        </div>
    </form>
</body>
</html>
