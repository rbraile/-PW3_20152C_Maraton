using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    using clases;
    public partial class admin_agregar_resultados : System.Web.UI.Page
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
                            String currurl = HttpContext.Current.Request.RawUrl;
                            int iqs = currurl.IndexOf('=');
                            int maratonId = Convert.ToInt32((iqs < currurl.Length - 1) ? currurl.Substring(iqs + 1) : String.Empty);

                            var resultadoRep = new ResultadoRepositorio(contexto);
                            List<ResultadoParticipante> litasParticipantes = resultadoRep.getParticipantesMaraton(maratonId);
                            participantes.DataSource = litasParticipantes;
                            participantes.DataBind();
                           
                        }
                    }//if
                }//try
                catch
                { 
                }
            }// ispostback
        }
    }
}