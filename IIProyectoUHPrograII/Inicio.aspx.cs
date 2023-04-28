using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "Escuelas.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string url = "Cursos.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void BTAgregarEstudiante_Click(object sender, EventArgs e)
        {
            string url = "Estudiantes.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void BTAsignarNotas_Click(object sender, EventArgs e)
        {
            string url = "Notas.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void BTAgregarClase_Click(object sender, EventArgs e)
        {
            string url = "Clases.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void BTAsignarProfesorACurso_Click(object sender, EventArgs e)
        {
            string url = "ProfesoresCursos.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void BTAsignarEstudianteACurso_Click(object sender, EventArgs e)
        {
            string url = "EstudiantesCursos.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }

        protected void BTAgregarProfesor_Click(object sender, EventArgs e)
        {
            string url = "Profesores.aspx";
            string script = "window.open('" + url + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, GetType(), "openTab", script, true);
        }
    }
}