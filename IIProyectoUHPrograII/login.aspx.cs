using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            ClsUsuario.correo = tcorreo.Text;
            ClsUsuario.clave = tclave.Text;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["UNIVERSITYConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select Email, clave from Usuarios where Email = '" + ClsUsuario.correo + "' " +
                "and clave = '" + ClsUsuario.clave + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("inicio.aspx");
            }
            else
            {
                lmensaje.Text = "Usuario o Contraseña incorrecto";
            }

            conexion.Close();

        }
    }
}