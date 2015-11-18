using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace PW3_20152C_Maraton
{
    public partial class user_register_marathon : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            message_ok.Visible = false;
            message_error.Visible = false;
            message_warning.Visible = false;
            try
            {
                if (!Session["usuarioNivel"].Equals("usuario"))
                {
                    Response.Redirect("/index.aspx");
                }

                using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
                {
                    confirm2.Visible = false;
                    var maratonRep = new MaratonRepositorio(contexto);
                    maratones.DataSource = maratonRep.getMaratones();
                    maratones.DataBind();
                }
                
            }
            catch {
                Response.Redirect("/index.aspx");
            }
        }

        protected void registerMarathon(object sender, EventArgs e)
        {
            confirm2.Visible = true;
            registerMaraton.Attributes.Add("class", "hide");

        }

        protected void maratones_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(e);

        }

        protected void seleccion_maraton_command(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "suscribir")
            {
                LinkButton btn = (LinkButton)e.CommandSource;
                Int32 IdMaraton = Convert.ToInt32(btn.CommandArgument);
                Int32 IdUsuario = Convert.ToInt32(Session["usuarioId"]);
                String numero = Convert.ToString(IdMaraton) + Convert.ToString(IdUsuario);
                using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
                {
                    var resultadoRep = new ResultadoRepositorio(contexto);
                    var maratonRep = new MaratonRepositorio(contexto);

                    ResultadoMaratonParticipante resultado = new ResultadoMaratonParticipante();
                    resultado.IdUsuario = IdUsuario;
                    resultado.IdMaraton = IdMaraton;

                    if (!resultadoRep.VerificarYaInscripto(IdUsuario, IdMaraton))
                    {
                        int cantidadUsuarios = resultadoRep.getCantidadDeUsuarios(IdMaraton);
                        Maraton maraton = maratonRep.getMaratonById(IdMaraton);
                        int cantMaxima = Convert.ToInt32(maraton.MaxParticipantes);
                        int cantEspera = Convert.ToInt32(maraton.ParticipantesEnEspera);

                        if (cantidadUsuarios < (cantMaxima + cantEspera))
                        {
                            if (cantidadUsuarios < cantMaxima)
                            {
                                resultado.NroInscripcion = Convert.ToInt32(numero);
                                resultadoRep.agregarParticipante(resultado);
                                datos_maraton.InnerText = "El lugar de la maraton es: <strong>" + maraton.LugarSalida + "</strong>"
                                + " la fecha de inicio es <strong>" + maraton.FechaHorarioComienzo + "</strong>"
                                + "Su numero de inscripción es el: <strong>" + numero + "</strong>";
                                registerMaraton.Visible = false;
                                message_ok.Visible = true;
                            }
                            else
                            {
                                resultado.NroInscripcion = Convert.ToInt32(numero);
                                resultadoRep.agregarParticipanteEnEspera(resultado);
                                registerMaraton.Visible = false;
                                message_warning.Visible = true;
                            }
                        }
                        else
                        {
                            txtMessage.InnerHtml = "Esta maraton no tiene mas cupo <a href='user_index.aspx'>Volver</a>";
                            registerMaraton.Visible = false;
                            message_error.Visible = true;
                        }
                    }
                    else {
                        txtMessage.InnerHtml = "Ya esta registrado en esta maraton <a href='user_index.aspx'>Volver</a>";
                        registerMaraton.Visible = false;
                        message_error.Visible = true;
                    }
                }
            }
        }
    }
}