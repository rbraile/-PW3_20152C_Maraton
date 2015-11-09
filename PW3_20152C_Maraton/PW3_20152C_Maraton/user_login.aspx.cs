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

        public PW3_20152C_TP2_MaratonesEntities contexto4 = new PW3_20152C_TP2_MaratonesEntities();
        protected void login_user(object sender, EventArgs e)
        {
            if (usuario_nombre.Text != "" && usuario_clave.Text != "")
            {
                var usuarioRep = new UsuarioRepositorio(contexto4);
                Usuario usuario = usuarioRep.getUsuario(usuario_nombre.Text, usuario_clave.Text);
                Label1.Text = usuario.Apellido;
                //Response.Redirect("/user_index.aspx");
            }
            
        }
    }
}