using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIProyectoUHPrograII
{
    public partial class Clases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT1CS_Click(object sender, EventArgs e)
        {
            try
            {
                SqlClass.Insert();
                Response.Redirect(Request.Url.AbsoluteUri);
                
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente\nVerifique que el ID no ha sido utilizado anteriormente.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);

                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT2CS_Click(object sender, EventArgs e)
        {

            try
            {
                SqlClass.Update();
                Response.Redirect(Request.Url.AbsoluteUri);
           }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT3CS_Click(object sender, EventArgs e)
        {
            try
            {
                SqlClass.Delete();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception ex)
            {
                string errorScript = "window.onload = function() { alert('Un error ha ocurrido. Por favor intente nuevamente.\nVerifique que el ID pertenece a esta tabla.'); }";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);
                Debug.WriteLine(ex.Message);
            }
        }

        protected void BT4CS_Click(object sender, EventArgs e)
        {
            SqlClass.SelectCommand = "SELECT * FROM [CLASS] WHERE ClassId LIKE '%" + TIDClaseCLS.Text+"%'";
            SqlClass.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}