using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace FF_al_15
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox4.Text.Trim() != "" && TextBox5.Text.Trim() != "" && TextBox6.Text.Trim() != "")
            {

                string rest_name;
                string rest_address;
                string rest_owner_name;
                string rest_cellphone;
                string rest_password;
                string rest_email;

                rest_name = TextBox1.Text;
                rest_address = TextBox2.Text;
                rest_owner_name = TextBox3.Text;
                rest_cellphone = TextBox4.Text;
                rest_password = EncryptString(TextBox5.Text, initVector);
                rest_email = TextBox6.Text;
                

                 if (datosrestaurante.UsuariosRepetidos3(rest_name, rest_address, rest_cellphone, rest_owner_name, rest_password, rest_email) == 0){
                        alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success'); </script>";

                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        

                
                 }
                else
                {
                    alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Elije  nuevo nombre de usuario', 'error'); </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }

        }
        private const string initVector = "pemgail9uzpgzl88";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
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