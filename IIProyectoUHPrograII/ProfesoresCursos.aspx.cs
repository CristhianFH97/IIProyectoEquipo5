using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class ProfesoresCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT1PC_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlTeacherCourse.Insert();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID no ha sido utilizado anteriormente.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT2PC_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlTeacherCourse.Update();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT3PC_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlTeacherCourse.Delete();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT4PC_Click(object sender, EventArgs e)
        {
            SqlTeacherCourse.SelectCommand = "SELECT * FROM [TEACHER_COURSE] WHERE TeacherId LIKE '%" + DDIdPfPC.Text + "%'";
            SqlTeacherCourse.DataBind();
        }

        protected void BT5PC_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void DDIdPfPC_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}