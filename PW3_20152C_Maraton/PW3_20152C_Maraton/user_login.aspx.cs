using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace PW3_20152C_Maraton
{
    using clases;
    public partial class login : System.Web.UI.Page
    {

        protected void login_user(object sender, EventArgs e)
        {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
            {
                if (usuario_nombre.Text != "" && usuario_clave.Text != "")
                {
                    Md5 md5 = new Md5();
                    String md5clave = usuario_clave.Text;
                    string clavehash = md5.GetMd5Hash(md5clave);

                    var usuarioRep = new UsuarioRepositorio(contexto);
                    Usuario usuario = usuarioRep.getUsuario(usuario_nombre.Text, clavehash);
                    Label1.Text = usuario.IdUsuario.ToString();
                    //Response.Redirect("/user_index.aspx");
                }
            }
        }
    }
}