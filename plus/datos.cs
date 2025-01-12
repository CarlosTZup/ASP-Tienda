using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace FF_al_15
{
    public class datos
    {
        public static MySqlConnection ObtenerConexion()
        {
            MySqlConnection datos = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");
            datos.Open();
            return datos;
        }
    }

    public class Genero
    {
        public int Id { get; set; }//mostramos y modificamos los valores de Id
        public string User_Gender { get; set; }//mostramos y modificamos los valores de nombre_genero
    }

    public class Role
    {
        public int Role_ID { get; set; }//mostramos y modificamos los valores de Id
        public string Role_Name { get; set; }//mostramos y modificamos los valores de nombre_genero
    }

    public class CreditCard
    {
        public int ID { get; set; }//mostramos y modificamos los valores de Id
        public string User_Type { get; set; }//mostramos y modificamos los valores de nombre_genero
    }

}