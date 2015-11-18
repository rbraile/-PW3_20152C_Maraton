using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton.DTO
{
    public class MaratonDTO
    {
        public string MaratonNombre { get; set; }
        public int? PosicionFinal { get; set; }
        public int? TiempoLlegada { get; set; }
        public int? Premio { get; set; }
        public int? IdMaraton { get; set; }
        public int? PrimerPremio { get; set; }
        public int? SegundoPremio { get; set; }
        public int? TercerPremio { get; set; }
    }
}