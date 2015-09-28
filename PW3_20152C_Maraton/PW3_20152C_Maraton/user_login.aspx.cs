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
        protected void UserLogin_Load(object sender, EventArgs e)
        {
            Label lblMensaje = (Label)Master.FindControl("mensaje");
            lblMensaje.Text = "";
        }

        protected void login_user(object sender, EventArgs e)
        {
            Label lblMensaje = (Label)Master.FindControl("mensaje");
            lblMensaje.Text = "Se ha logueado correctamente";
            Response.Redirect("/user_index.aspx");
        }
    }
}