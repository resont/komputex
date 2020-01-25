<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_panel.aspx.cs" Inherits="admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:komputexConnectionString2 %>" SelectCommand="select p.Nazwa, u.Login, z.Data, z.Ilosc from Zamowienia z inner join Produkty p on z.Id_p = p.Id_p inner join Uzytkownicy u on z.Id_u = u.Id_u;"></asp:SqlDataSource>


            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Powrót" />
			<br />


            <asp:Label ID="Label1" runat="server" Text="ZAMÓWIENIA"></asp:Label>
			<br />


            <table border="1">
                <tr style="background-color:#004080;color:White;" >
                <td> Nazwa </td>                        
                <td> Login </td>            
                <td> Data </td>
                <td> Ilość </td>
                </tr>

                

                <%=getWhileLoopData_z()%>
            </table>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="PRODUKTY"></asp:Label>
            

            <table border="1">
                <tr style="background-color:#004080;color:White;" >
                <td> ID </td>                        
                <td> Nazwa </td>            
                <td> Cena </td>
                <td> Ilość </td>
                <td> Typ </td>
                <td> Dodawanie </td>
            </tr>

               <%=getWhileLoopData_p()%>

        </table>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="DODAJ NOWY"></asp:Label>

        	<br />


        </div>
    	<asp:Label ID="Label4" runat="server" Text="Nazwa"></asp:Label>
		<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label5" runat="server" Text="Cena"></asp:Label>
		<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label6" runat="server" Text="Ilość"></asp:Label>
		<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
		<br />
		<asp:Label ID="Label7" runat="server" Text="Typ"></asp:Label>
		<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nazwa" DataValueField="Id_t">
		</asp:DropDownList>
		<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:komputexConnectionString2 %>" SelectCommand="SELECT [Id_t], [Nazwa] FROM [Typy]"></asp:SqlDataSource>
		
		<br />
		<asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label8" runat="server"></asp:Label>
    </form>
</body>
</html>
