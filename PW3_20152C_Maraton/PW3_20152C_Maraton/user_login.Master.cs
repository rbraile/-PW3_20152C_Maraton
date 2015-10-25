using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class login_user : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {       
            ucFooter();
        }

        private void ucFooter() {
            texto1.Text = "Universidad Nacional de La Matanza.";
            texto2.Text = "Dpto. de Ingeniería e Investigaciones Tecnológicas.";
            texto3.Text = "Tecnicatura en Desarrollo Web ­ Programación Web III.";
            texto4.Text = "Integrantes : Roberto Braile - Karina Obermeier - Maria Laura Tula.";
        }
    }
}