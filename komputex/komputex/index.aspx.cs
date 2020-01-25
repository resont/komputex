using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["login"] != null)
        {
            string login = Session["login"].ToString();
            Label1.Text = "Użytkonik: " + login;
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = false;

            if (login == "admin")
            {
                Button4.Visible = true;
            }
        }

        

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public string getWhileLoopData()
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
            if (Ilosc > 0)
            {
                htmlStr += "<tr><td>" + id + "</td><td>" + Nazwa + "</td><td>" + Cena + "</td><td>" + Ilosc + "</td><td>" + Typ + "</td><td> <a href='buy.aspx?id=" + id + "'> Kup </a></td></tr>";
            }
            else
            {
                htmlStr += "<tr><td>" + id + "</td><td>" + Nazwa + "</td><td>" + Cena + "</td><td>" + Ilosc + "</td><td>" + Typ + "</td><td><s> Kup </s></td></tr>";
            }
        }

        thisConnection.Close();
        return htmlStr;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["login"] = null;
        Session["password"] = null;
        Response.Redirect(Request.RawUrl);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_panel.aspx");
    }
}