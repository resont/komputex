using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		if(TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
		{
			Label5.Text = "Żadne pole nie może być puste!";
		}
		else
		{
			string imie = TextBox1.Text;
			string nazwisko = TextBox2.Text;
			string login = TextBox3.Text;
			string haslo = TextBox4.Text;

			string SQLquery = "insert into Uzytkownicy values ('" + imie + "','" + nazwisko + "','" + login + "','" + haslo + "')";

			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
			SqlCommand cmd = new SqlCommand(SQLquery, conn);
			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();
			Label5.Text = "Konto zostało założone!";
			ScriptManager.RegisterStartupScript(this, typeof(Page), "script", "setTimeout(function(){window.location.href='index.aspx';},2000);", true);
		}
	}
}