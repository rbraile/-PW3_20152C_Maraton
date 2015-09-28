using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label lblMensaje = (Label)Master.FindControl("mensaje");
            lblMensaje.Text = "";
        }

        protected void login_admin(object sender, EventArgs e)
        {
            Label lblMensaje = (Label)Master.FindControl("mensaje");
            lblMensaje.Text = "Se ha logueado correctamente";
            Response.Redirect("/admin_index.aspx");
        }
    }
}