using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace FF_al_15
{
    public class conexiones
    {
        //********************************************************************************      
        public static int UsuariosRepetidos(string username, string encriptada, string name, string Userbirthday, string User_Gender, string email, string Address, string Cellphone)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT User_ID FROM user_info WHERE username='" + username + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                conexiones.AgregarUsuario(username, encriptada, name, Userbirthday, User_Gender, Address, email, Cellphone);
            }
            conexion.Close();
            return valor;
        }

        //********************************************************************************
        public static int AgregarUsuario(string username, string User_Pass, string name, string Userbirthday, string User_Gender, string Address, string Email, string Cellphone)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into user_info (Name, username, User_Pass, User_Birthday, User_Gender, Address, Email, Cellphone) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", name, username, User_Pass, Userbirthday, User_Gender, Address, Email, Cellphone), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        public static List<Genero> list()
        {
            List<Genero> _lista = new List<Genero>();
            MySqlCommand _comando = new MySqlCommand(String.Format("SELECT id_genero, genero FROM gender"), datos.ObtenerConexion());
            MySqlDataReader _reader = _comando.ExecuteReader();
            while (_reader.Read())
            {
                Genero pGenero = new Genero();
                pGenero.Id = _reader.GetInt32(0);
                pGenero.User_Gender = _reader.GetString(1);
                _lista.Add(pGenero);
            }
            return _lista;
        }

        public static List<Role> lista()
        {
            List<Role> _lista = new List<Role>();
            MySqlCommand _comando = new MySqlCommand(String.Format("SELECT Role_ID, Role_Name FROM roles"), datos.ObtenerConexion());
            MySqlDataReader _reader = _comando.ExecuteReader();
            while (_reader.Read())
            {
                Role pRole = new Role();
                pRole.Role_ID = _reader.GetInt32(0);
                pRole.Role_Name = _reader.GetString(1);
                _lista.Add(pRole);
            }
            return _lista;
        }

        public static int agregar(Add pAlumno)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into products (ID, Marca, Producto, Precio, Cantidad , Address) values('{0}','{1}','{2}','{3}','{4}' ,'{5}')", pAlumno.Id, pAlumno.Marca, pAlumno.Producto, pAlumno.Precio, pAlumno.Cantidad , pAlumno.Address), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }

        //********************************************************************************
        public static int Eliminar(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From products where ID={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }

    }
}
