using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class buy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            //Label1.Text = "Zaloguj się żeby coś kupić!";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Zaloguj się żeby coś kupić!')", true);
            ScriptManager.RegisterStartupScript(this, typeof(Page), "script", "setTimeout(function(){window.location.href='index.aspx';},100);", true);


        }
        else
        {
            string id = Request.QueryString["id"];
            if (id != null)
            {
                int id_u = Convert.ToInt32(Session["id_u"]);
                int ilosc = 1;
                string SQLquery = "update Produkty set Ilosc-=1 where Id_p=" + id;
                string SQLquery2 = "insert into Zamowienia values (" + id + ","+id_u+",GetDate(),"+ilosc+")";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["komputexConnectionString2"].ConnectionString);
                SqlCommand cmd = new SqlCommand(SQLquery, conn);
                SqlCommand cmd2 = new SqlCommand(SQLquery2, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("index.aspx");
        }
        

    }
}