using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class user_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["usuarioNivel"].Equals("usuario"))
                    {
                        using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
                        {
                            var usuarioRep = new UsuarioRepositorio(contexto);
                            Usuario usuario = usuarioRep.getUsuarioById(Convert.ToInt32(Session["usuarioId"]));
                            fecha.Text = Convert.ToString(usuario.FechaNac);
                            nombre.Text = usuario.Nombre;
                            apellido.Text = usuario.Apellido;
                            lugar.Text = usuario.LugarResidencia;
                        }
                    }
                }
                catch
                {
                    Response.Redirect("/error.aspx");
                }
            }
        }

        protected void edituserButton_Click(object sender, EventArgs e) {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
            {
                int id = Convert.ToInt32(Session["usuarioId"]);

                Usuario usuario = (from usuarios in contexto.Usuario where usuarios.IdUsuario == id select usuarios).Single();
                usuario.FechaNac = Convert.ToDateTime(fecha.Text);
                usuario.Nombre = nombre.Text;
                usuario.Apellido = apellido.Text;
                usuario.LugarResidencia = lugar.Text;
                cosa.InnerText = apellido.Text + " " + nombre.Text;
                contexto.SaveChanges();                
                //Response.Redirect("/user_edit.aspx");
            }
            
        }

        protected void cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/user_index.aspx.aspx");
        }
    }
}