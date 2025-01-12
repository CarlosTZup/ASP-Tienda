using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace FF_al_15
{
    public class datosrestaurante
    {
        public static int UsuariosRepetidos3(string rest_name, string rest_address, string rest_cellphone, string rest_owner_name, string rest_password, string rest_email)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT id_restrole FROM rest_info WHERE rest_name ='" + rest_name + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                datosrestaurante.AgregarUsuario3(rest_name, rest_address, rest_cellphone, rest_owner_name, rest_password, rest_email);
            }
            conexion.Close();
            return valor;
        }
        //********************************************************************************
        public static int AgregarUsuario3(string rest_name, string rest_address, string rest_cellphone, string rest_owner_name, string rest_password, string rest_email)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into rest_info (rest_name, rest_address, rest_cellphone, rest_owner_name, rest_password , rest_email) values ('{0}','{1}','{2}','{3}','{4}','{5}')", rest_name, rest_address, rest_cellphone, rest_owner_name, rest_password, rest_email), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

    }
}