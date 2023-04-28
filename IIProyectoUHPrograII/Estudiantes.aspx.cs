using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class Estudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DDIdClsES_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BT1EST_Click(object sender, EventArgs e)
        {
            try
            {
                SqlStudent.Insert();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID no ha sido utilizado anteriormente.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT2EST_Click(object sender, EventArgs e)
        {
            try
            {
                SqlStudent.Update();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT3EST_Click(object sender, EventArgs e)
        {
            try
            {
                SqlStudent.Delete();
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Puede que hayan otros registros relacionados a este estudiante.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT4EST_Click(object sender, EventArgs e)
        {
            SqlStudent.SelectCommand = "SELECT * FROM [STUDENT] WHERE StudentId LIKE '%" + TIDEstudianteES.Text + "%'";
            SqlStudent.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}