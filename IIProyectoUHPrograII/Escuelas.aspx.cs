using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class Escuelas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT1ESC_Click(object sender, EventArgs e)
        {
            try
            {
                SqlSchool.Insert();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID no ha sido utilizado anteriormente.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT2ESC_Click(object sender, EventArgs e)
        {

            try
            {
                SqlSchool.Update();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT3ESC_Click(object sender, EventArgs e)
        {
            try
            {
                SqlSchool.Delete();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Puede que hayan profesores/estudiantes relacionados a esta escuela.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT4ESC_Click(object sender, EventArgs e)
        {
            SqlSchool.SelectCommand = "SELECT * FROM [SCHOOL] WHERE SchoolId LIKE '%" + TIDEscuelaEsc.Text + "%'";
            SqlSchool.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}