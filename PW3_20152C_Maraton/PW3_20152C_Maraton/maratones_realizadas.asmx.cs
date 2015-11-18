using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace PW3_20152C_Maraton
{
    using DTO;
    /// <summary>
    /// Descripción breve de maratones_realizadas
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class maratones_realizadas : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public List<MaratonDTO> ObtenerMaratonesRealizados()
        {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
            {
                int idUsuario = Convert.ToInt32(Session["usuarioId"]);
                MaratonRepositorio maratonRep = new MaratonRepositorio(contexto);
                return maratonRep.obtenerMaratones(idUsuario);
            }
        }
    }
}
