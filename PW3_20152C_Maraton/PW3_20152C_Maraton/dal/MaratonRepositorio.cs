using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton
{
    public class MaratonRepositorio
    {
        public PW3_20152C_TP2_MaratonesEntities contexto2 { get; set; }

        public MaratonRepositorio(PW3_20152C_TP2_MaratonesEntities contexto2)
        {
            this.contexto2 = contexto2;
        }

        public int Crear(Maraton maraton)
        {
            contexto2.Maraton.Add(maraton);
            contexto2.SaveChanges();
            return maraton.IdMaraton;
        }

        public List<Maraton> getMaratones() {
            return (from maratones in contexto2.Maraton select maratones).ToList();
        }
    }
}
