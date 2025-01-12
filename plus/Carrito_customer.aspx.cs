using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace FF_al_15
{
    public partial class Carrito_customer : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {
            //1
            try
            {
                string nombre = Session["username"].ToString();
            }
            catch
            {
                Response.Redirect("index_rest.aspx");
            }

            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from products";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        void Consulta()
        {
            string buscador;
            buscador = TextBox1.Text;



            
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "SELECT * from products WHERE	Marca ='" + buscador;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();


            // 1
            //MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= proyecto; Uid=root; pwd=;");
            //var cmd = "SELECT * from products WHERE	Marca ='" + buscador;
            //MySqlCommand comando = new MySqlCommand(cmd, conexion);
            //conexion.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Consulta();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Consulta();
        }
    }
}