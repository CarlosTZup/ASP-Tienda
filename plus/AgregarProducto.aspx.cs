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
    public partial class AgregarProducto : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtmarca.Text.Trim() != "" && txtproducto.Text.Trim() != "" && txtprecio.Text.Trim() != "" && txtcantidad.Text.Trim() != "" && txtaddress.Text.Trim() != "")
            {
                try
                {


                    Add pAlumno = new Add();
                    pAlumno.Marca = txtmarca.Text.Trim();
                    pAlumno.Producto = txtproducto.Text.Trim();
                    pAlumno.Precio = txtprecio.Text.Trim();
                    pAlumno.Cantidad = txtcantidad.Text.Trim();
                    pAlumno.Address = txtaddress.Text.Trim();
                    int resultado = conexiones.agregar(pAlumno);
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

                    alerta.Text = "<script>Swal.fire('Su producto se Agrego con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
                    txtproducto.Text = "";
                    txtprecio.Text = "";
                    txtcantidad.Text = "";
                    txtmarca.Text = "";
                    txtaddress.Text = "";

                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Intentalo otra vez', 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }
    }
}