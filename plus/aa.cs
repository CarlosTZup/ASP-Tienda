using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace FF_al_15
{
    public class aa
    {
        public static int TarjetasRepetidas(string User_type, string Number_card, string Mes, string Año, string Security_code, string Name, string LastName, string Dinero)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT ID FROM paymethod WHERE Number_card='" + Number_card + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                aa.AgregarTarjeta(User_type, Number_card, Mes , Año, Security_code, Name, LastName, Dinero);
            }
            conexion.Close();
            return valor;
        }

        public static int AgregarTarjeta(string User_type, string Number_card, string Mes, string Año, string Security_code, string Name, string LastName , string Dinero)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into paymethod (User_type, Number_card, Mes , Año, Security_code, Name, LastName, Dinero) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", User_type, Number_card, Mes, Año, Security_code, Name, LastName, Dinero), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }


        public static List<CreditCard> list()
        {
            List<CreditCard> _lista = new List<CreditCard>();
            MySqlCommand _comando = new MySqlCommand(String.Format("SELECT ID, Tipo_tarjeta FROM creditcard"), datos.ObtenerConexion());
            MySqlDataReader _reader = _comando.ExecuteReader();
            while (_reader.Read())
            {
                CreditCard pCreditCard = new CreditCard();
                pCreditCard.ID = _reader.GetInt32(0);
                pCreditCard.User_Type = _reader.GetString(1);
                _lista.Add(pCreditCard);
            }
            return _lista;
        }
    }


}