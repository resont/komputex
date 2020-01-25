using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_panel : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
    public string getWhileLoopData_z()
    {
        string htmlStr = "";
        SqlConnection thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select p.Nazwa, u.Login, z.Data, z.Ilosc from Zamowienia z inner join Produkty p on z.Id_p = p.Id_p inner join Uzytkownicy u on z.Id_u = u.Id_u;";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {
          
            string Nazwa = reader.GetString(0);
            string Login = reader.GetString(1);
            DateTime Data = reader.GetDateTime(2);
            int Ilosc = reader.GetInt32(3);

            htmlStr += "<tr><td>" + Nazwa + "</td><td>" + Login + "</td><td>" + Data + "</td><td>" + Ilosc + "</td></tr>";


        }

        thisConnection.Close();
        return htmlStr;
    }

    public string getWhileLoopData_p()
    {
        string htmlStr = "";
        SqlConnection thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select p.Id_p, p.Nazwa, p.Cena, p.Ilosc, t.Nazwa as Typ from Produkty p inner join Typy t ON p.Typ = t.Id_t";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {
            int id = reader.GetInt32(0);
            string Nazwa = reader.GetString(1);
            string Cena = reader.GetString(2);
            int Ilosc = reader.GetInt32(3);
            string Typ = reader.GetString(4);


            htmlStr += "<tr><td>" + id + "</td><td>" + Nazwa + "</td><td>" + Cena + "</td><td>" + Ilosc + "</td><td>" + Typ + "</td><td> <a href='add.aspx?id=" + id + "'> Dodaj produkt </a></td></tr>";
        }

        thisConnection.Close();
        return htmlStr;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
        {
            Label8.Text = "Żadne pole nie może być puste!";
        }
        else
        {

            string nazwa = TextBox1.Text;
            string cena = TextBox2.Text;
            int ilosc = Convert.ToInt32(TextBox3.Text);
            int typ = DropDownList1.SelectedIndex + 1;
            Response.Redirect("add.aspx?nazwa=" + nazwa + "&cena=" + cena + "&ilosc=" + ilosc + "&typ=" + typ);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}