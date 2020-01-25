using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
    SqlDataReader reader;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string login = TextBox1.Text;
        string password = TextBox2.Text;

        string SQLquery = "select Id_u, Login, Haslo from Uzytkownicy";
        
        SqlCommand cmd = new SqlCommand(SQLquery, conn);
        conn.Open();

        reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            int id_r = reader.GetInt32(0);
            string login_r = reader.GetString(1);
            string password_r = reader.GetString(2);
            
            if(login == login_r)
            {
                if(password == password_r)
                {
                    Session["login"] = login;
                    Session["password"] = password;
                    Session["id_u"] = id_r;

                    Response.Redirect("index.aspx");

                }
                info.Text = "Zły login lub hasło!";

            }
            info.Text = "Zły login lub hasło!";
        }


    }
}