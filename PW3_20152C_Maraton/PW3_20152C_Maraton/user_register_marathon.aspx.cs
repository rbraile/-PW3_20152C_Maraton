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
            try
            {

                if (Session["usuarioNivel"].Equals("usuario"))
                {
                    using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
                    {
                        confirm2.Visible = false;
                        var maratonRep = new MaratonRepositorio(contexto);
                        //maratones.DataSource = maratonRep.getMaratonesPermitidas(Convert.ToInt32(Session["usuarioId"]));
                        maratones.DataSource = maratonRep.getMaratones();
                        maratones.DataBind();
                    }
                }
                else
                {
                    Response.Redirect("/index.aspx");
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
            Label2.Text = id.ToString();
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

                        if (cantidadUsuarios < (cantMaxima + cantEspera) )
                        {
                            if (cantidadUsuarios < cantMaxima)
                            {
                                resultado.NroInscripcion = Convert.ToInt32(numero);
                                resultadoRep.agregarParticipante(resultado);

                            }
                            else
                            {
                                resultado.NroInscripcion = Convert.ToInt32(numero);
                                resultadoRep.agregarParticipante(resultado);
                            }
                        }

                   


                    }
                    else {
                        Response.Redirect("/error.aspx");
                    }



                }

            }
        }


    }
}