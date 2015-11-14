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
                    try
                    {
                        Usuario usuario = usuarioRep.getUsuario(usuario_nombre.Text, clavehash);
                        Session["usuarioId"] = usuario.IdUsuario;
                        Session["usuarioNombre"] = usuario.Nombre;
                        if (usuario.Admin)
                        {
                            Session["usuarioNivel"] = "Admin";
                        }
                        else
                        {
                            Session["usuarioNivel"] = "usuario";
                        }
                        
                        // Label1.Text = " " + Session["nombreUsusario"];
                        Response.Redirect("/user_index.aspx");
                    }
                    catch
                    {
                        Label1.Text = "error";
                    }
                }
            }
        }
    }
}