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

        public List<Maraton> getMaratonesById(int IdUsuario) {
            return (from maratones in contexto.Maraton
                    join resultado in contexto.ResultadoMaratonParticipante on maratones.IdMaraton equals resultado.IdMaraton
                    where resultado.IdUsuario != IdUsuario
                    select maratones).ToList();
            
        }

        public List<Maraton> getMaratones()
        {
            List<Maraton> maratonesList = (from maratones in contexto.Maraton select maratones).ToList();
            List<Maraton> maratonFiltro = new List<Maraton>();

            foreach (Maraton maraton in maratonesList)
            {
                DateTime hoy = DateTime.Today;
                DateTime inicio = Convert.ToDateTime(maraton.FechaHorarioComienzo);

                if (DateTime.Compare(inicio, hoy) > 0)
                {
                    maratonFiltro.Add(maraton);
                }
            }
            return maratonFiltro;
        }

        public Maraton getMaratonesById(int idMaraton)
        {
            return (from maraton in contexto.Maraton where maraton.IdMaraton == idMaraton select maraton).Single();
        }
    }
}
