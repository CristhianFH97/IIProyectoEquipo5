using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class Profesores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT1PF_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlTeacher.Insert();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID no ha sido utilizado anteriormente.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT2PF_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlTeacher.Update();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT3PF_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlTeacher.Delete();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT4PF_Click(object sender, EventArgs e)
        {
            SqlTeacher.SelectCommand = "SELECT * FROM [TEACHER] WHERE TeacherId LIKE '%" + TIDProfesorPF.Text + "%'";
            SqlTeacher.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}