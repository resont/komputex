using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		string id = Request.QueryString["id"];
		if(id != null)
		{
			string SQLquery = "update Produkty set Ilosc+=1 where Id_p=" + id;

			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
			SqlCommand cmd = new SqlCommand(SQLquery, conn);

			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();
		}
		else
		{
			string nazwa = Request.QueryString["nazwa"];
			string cena = Request.QueryString["cena"];
			int ilosc = Convert.ToInt32(Request.QueryString["ilosc"]);
			int typ = Convert.ToInt32(Request.QueryString["typ"]);

			string SQLquery = "insert into Produkty values ('"+nazwa+"','"+cena+"',"+ilosc+","+typ+")";

			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
			SqlCommand cmd = new SqlCommand(SQLquery, conn);

			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();
		}
		Response.Redirect("admin_panel.aspx");
	}

	protected void Button1_Click(object sender, EventArgs e)
	{

	}
}