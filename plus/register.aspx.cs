using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;

namespace FF_al_15
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void register_Click(object sender, EventArgs e)

        {
            if (Textfname.Text.Trim() != "" && Textpassword1.Text.Trim() != "" && Textpassword2.Text.Trim() != "" && Textusername.Text.Trim() != ""  && Textemail.Text.Trim() != "" && Textbirthday.Text.Trim() != "" && Listgender.SelectedValue.Trim() != "" && Textcellphone.Text.Trim() != "")
            {
                if (Textpassword1.Text == Textpassword2.Text)
                {
                    string encriptada;
                    string usuario;
                    string name;
                    string Userbirthday;
                    string User_Gender;
                    string email;
                    string Address;
                    string Cellphone;
                    name = Textfname.Text;
                    usuario = Textusername.Text;
                    encriptada = EncryptString(Textpassword1.Text, initVector);
                    Userbirthday = Textbirthday.Text;
                    User_Gender = Listgender.SelectedValue;
                    Address = Textaddress.Text;
                    Cellphone = Textcellphone.Text;
                    email = Textemail.Text;
                               

                   if (conexiones.UsuariosRepetidos(usuario, encriptada, name, Userbirthday, User_Gender, email, Address, Cellphone) == 0)
                   {
                        alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success'); </script>";

                     Textfname.Text = "";
                     Textusername.Text = "";
                     Textpassword1.Text = "";
                     Textpassword2.Text = "";
                     Textemail.Text = "";
                     Textbirthday.Text = "";
                     Textaddress.Text = "";
                     Listgender.SelectedValue = "";
                     Textcellphone.Text = "";
                     Response.Redirect("Login.aspx");


                    }
                   else
                   {
                        alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Elije  nuevo nombre de usuario', 'error'); </script>";
                   }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Contraseña incorrecta', 'Repita su contraseña.', 'error');</script>";
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