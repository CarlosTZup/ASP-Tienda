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
    public partial class EditarProducto : System.Web.UI.Page
    {
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

            MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");
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

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (txtmarca.Text.Trim() != "" && txtproducto.Text.Trim() != "" && txtprecio.Text.Trim() != ""  && txtaddress.Text.Trim() != "" && txtcantidad.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                MySqlConnection conexion = datos.ObtenerConexion();
                string query = "UPDATE products SET Marca = @marca,  Producto = @producto, Precio = @precio, Cantidad=@cantidad , Address = @address WHERE ID=@id";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@marca", txtmarca.Text);
                comando.Parameters.AddWithValue("@producto", txtproducto.Text);
                comando.Parameters.AddWithValue("@precio", txtprecio.Text);
                comando.Parameters.AddWithValue("@cantidad", txtcantidad.Text);
                comando.Parameters.AddWithValue("@address", txtaddress.Text);
                comando.Parameters.AddWithValue("@ID", txtid.Text);
                comando.ExecuteNonQuery();
                conexion.Close();
                MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");
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

                txtmarca.Text = "";
                txtproducto.Text = "";
                txtprecio.Text = "";
                txtcantidad.Text = "";
                txtid.Text = "";
                txtaddress.Text = "";
                alerta.Text = "<script>Swal.fire('Su producto se Editado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM products WHERE ID=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    txtmarca.Text = registro["Marca"].ToString();
                    txtprecio.Text = registro["Precio"].ToString();
                    txtproducto.Text = registro["Producto"].ToString();
                    txtcantidad.Text = registro["Cantidad"].ToString();
                    txtaddress.Text = registro["Address"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }
    }
}