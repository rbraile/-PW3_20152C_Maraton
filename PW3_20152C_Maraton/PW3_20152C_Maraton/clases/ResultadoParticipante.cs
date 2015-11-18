using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton.clases
{
    public class ResultadoParticipante
    {
        public ResultadoParticipante() {
        }

        public int PosicionFinal { get; set; }
        public int tiempoLlegada { get; set; }
        public int Finalizo { get; set; }
        public String Nombre { get; set; }
        public int NroInscripcion { get; set; }
        public int IdUsuario { get; set; }
        public int IdMaraton { get; set; }
    }
}