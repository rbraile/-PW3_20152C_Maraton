using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton
{
    public class MaratonRepositorio
    {
        public PW3_20152C_TP2_MaratonesEntities contexto { get; set; }

        public MaratonRepositorio(PW3_20152C_TP2_MaratonesEntities contexto)
        {
            this.contexto = contexto;
        }

        public int Crear(Maraton maraton)
        {
            contexto.Maraton.Add(maraton);
            contexto.SaveChanges();
            return maraton.IdMaraton;
        }

        public List<Maraton> getMaratones()
        {
            return (from maratones in contexto.Maraton select maratones).ToList();
        }
    }
}
