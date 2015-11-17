using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace PW3_20152C_Maraton
{
    using clases;
    public partial class admin_edit_resultado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["usuarioNivel"].Equals("Admin"))
                    {
                        using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
                        {
                            String currurl = HttpContext.Current.Request.Url.Query;
                            var parsed = HttpUtility.ParseQueryString(currurl);
                            int idUsuario = Convert.ToInt32(parsed["idUsuario"]);
                            int idMaraton = Convert.ToInt32(parsed["idMaraton"]);
                            IdMaraton.Value = parsed["idMaraton"];
                            IdUsuario.Value = parsed["idUsuario"];
                            
                            var resultadoRep = new ResultadoRepositorio(contexto);
                            ResultadoParticipante participante = resultadoRep.getMaratonParticipante(idUsuario, idMaraton);

                        }
                    }//if
                }//try
                catch
                {

                }
            }// ispostback

        }

        protected void GuadarDatos(object sender, EventArgs e)
        {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
            {
                int idMaraton = Convert.ToInt32(IdMaraton.Value);
                int idUsuario = Convert.ToInt32(IdUsuario.Value);

                ResultadoMaratonParticipante resultadoP = (from resultado in contexto.ResultadoMaratonParticipante
                                                           where resultado.IdUsuario == idUsuario && resultado.IdMaraton == idMaraton
                                                           select resultado).Single();
                
                resultadoP.TiempoLlegada = Convert.ToInt32(Llegada.Text);
                resultadoP.Finalizo = Convert.ToBoolean(checkFinalizo.SelectedValue);
                resultadoP.PosicionFinal = Convert.ToInt32(PosFinal.Text);
                contexto.SaveChanges();
                Response.Redirect("/admin_agregar_resultados.aspx?maratonId=" + idMaraton);
            }
        }
    }
}