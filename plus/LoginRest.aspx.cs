using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace FF_al_15
{
    public partial class LoginRest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Textusernamelog.Text != "" && Textpasswordlog.Text != "")//Validando espacio vacio
            {
                string rest_name , rest_password;
                rest_password = EncryptString(Textpasswordlog.Text, initVector);
                rest_name = Textusernamelog.Text;
                //datos1.valorGlobal = usuario; //llamamos la clase datos1


                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= proyecto; Uid=root; pwd=;");
                var cmd = "SELECT id_restrole from rest_info WHERE	rest_name ='" + rest_name + "' AND rest_password='" + rest_password + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    Session["usermane"] = Textusernamelog;//Creamos una session 
                    Response.Redirect("AgregarProducto.aspx");//Nos redirecciona a nuestro formulario
                }
                else
                {
                    //Mensaje de alerta que se mostrará; como que fuese un MessageBox solo que con animacion javascript de SweetAlert
                    alerta.Text = "<script>Swal.fire('Error de Credenciales', 'Su usuario o contraseña no son correctos', 'error') </script>";
                    Textusernamelog.Text = "";//Limpia los text box
                    Textusernamelog.Text = "";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        private const string initVector = "pemgail9uzpgzl88";//llave del encriptado        
        private const int keysize = 256;// Esta constante se usa para determinar el tamaño de clave del algoritmo de cifrado
        //Encriptar
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }
    }
}