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
    public partial class newUser_registration : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                usuario_registro.Visible = true;
                message_ok.Visible = false;
                message_error.Visible = false;
                message_warning.Visible = false;
            }
        }

        protected void new_user(object sender, EventArgs e)
        {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
            {
                var UserRep = new UsuarioRepositorio(contexto);
                String md5clave = clave.Text;
                Md5 md5 = new Md5();
                string clavehash = md5.GetMd5Hash(md5clave);

                Usuario user = new Usuario();
                user.Apellido = apellido.Text;
                user.Nombre = nombre.Text;
                user.Email = email.Text;
                user.Contrasenia = clavehash;
                user.Admin = false;
                user.LugarResidencia = residencia.Text;
                user.FechaNac = Convert.ToDateTime(fechaNac.Text);

                try
                {
                    UserRep.Crear(user);
                    message_ok.Visible = true;
                    usuario_registro.Visible = false;
                }
                catch
                {
                    message_error.Visible = true;
                       
                }
                

            }
        }
    }
}