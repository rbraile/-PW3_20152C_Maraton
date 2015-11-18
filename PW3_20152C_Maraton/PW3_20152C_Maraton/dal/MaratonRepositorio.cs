using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton
{
    using clases;
    using DTO;
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

        public Maraton getMaratonById(int idMaraton)
        {
            return (from maraton in contexto.Maraton where maraton.IdMaraton == idMaraton select maraton).Single();
        }

        public List<Maraton> getMaratonesFinalizadas() 
        {
            var dateAndTime = DateTime.Now;
            var date = dateAndTime.Date;
            List<Maraton> maratonesList = (from maratones in contexto.Maraton join resultados in contexto.ResultadoMaratonParticipante
                                                on maratones.IdMaraton equals resultados.IdMaraton
                                                orderby maratones.FechaHorarioComienzo                                             
                                                 where maratones.FechaHorarioComienzo < date                                            
                                                select maratones).ToList();

            List<Maraton> maratonFiltro = new List<Maraton>();
            int flag = 1;
            Maraton maratonMax = new Maraton();
            foreach (Maraton maraton in maratonesList)
            {

                if (flag == 1)
                {
                    maratonMax = maraton;
                    maratonFiltro.Insert(0, maraton);
                    flag = 2;
                }
                else 
                {
                    if(maratonMax.FechaHorarioComienzo < maraton.FechaHorarioComienzo) {
                        maratonMax = maraton;
                        maratonFiltro.Insert(0, maraton);
                    }
                    else if (maratonMax.FechaHorarioComienzo == maraton.FechaHorarioComienzo)
                    {
                        int maxCount = (from maratones in contexto.Maraton
                                        join resultados in contexto.ResultadoMaratonParticipante
                                        on maratones.IdMaraton equals resultados.IdMaraton
                                        where maratones.IdMaraton < maratonMax.IdMaraton
                                        select maratones).Count();

                        int maratonCount = (from maratones in contexto.Maraton
                                            join resultados in contexto.ResultadoMaratonParticipante
                                            on maratones.IdMaraton equals resultados.IdMaraton
                                            where maratones.IdMaraton < maraton.IdMaraton
                                            select maratones).Count();

                        if (maxCount < maratonCount)
                        {
                            maratonMax = maraton;
                            maratonFiltro.Insert(0, maraton);
                        }
                    }//else if
                    else 
                    {
                        maratonFiltro.Add(maraton);
                    }//else
                }
            }
            return maratonFiltro;
        }

        public List<UltimaMaraton> getUltimaMaraton(int IdMaraton)
        {
            return (from maratones in contexto.Maraton
                    join resultados in contexto.ResultadoMaratonParticipante on maratones.IdMaraton equals resultados.IdMaraton
                    join users in contexto.Usuario on resultados.IdUsuario equals users.IdUsuario
                    where resultados.IdMaraton == IdMaraton
                    orderby resultados.PosicionFinal
                    select new UltimaMaraton(){ PosicionFinal = resultados.PosicionFinal.Value, NroInscripcion = resultados.NroInscripcion,
                                 Nya = users.Nombre + " " + users.Apellido,
                                 Finalizo = resultados.Finalizo.Value,
                                 TiempoLlegada = resultados.TiempoLlegada.Value
                    }).ToList();
        }

        public List<MaratonDTO> obtenerMaratones(int IdUsuario)
        {
            var dateAndTime = DateTime.Now;
            var date = dateAndTime.Date;
            List<MaratonDTO> resultadosParticipante = new List<MaratonDTO>();
            var maratonesDeUsuario = (from maratones in contexto.Maraton
                    join resultados in contexto.ResultadoMaratonParticipante on maratones.IdMaraton equals resultados.IdMaraton
                    join users in contexto.Usuario on resultados.IdUsuario equals users.IdUsuario
                    where resultados.IdUsuario == IdUsuario
                    && maratones.FechaHorarioComienzo < date
                    select new MaratonDTO()
                    {
                        PosicionFinal = (int)resultados.PosicionFinal,
                        MaratonNombre = maratones.Nombre,
                        Premio = 0,
                        TiempoLlegada = resultados.TiempoLlegada.Value,
                        PrimerPremio = maratones.PrimerPremio,
                        SegundoPremio = maratones.SegundoPremio,
                        TercerPremio = maratones.TercerPremio
                    });

            foreach(MaratonDTO maratonU in maratonesDeUsuario) 
            {
                switch (Convert.ToInt32(maratonU.PosicionFinal))
                {
                    case 1:
                        maratonU.Premio = Convert.ToInt32(maratonU.PrimerPremio);
                        break;
                    case 2:
                        maratonU.Premio = Convert.ToInt32(maratonU.SegundoPremio);
                        break;
                    case 3:
                        maratonU.Premio = Convert.ToInt32(maratonU.TercerPremio);
                        break;
                    default:
                        maratonU.Premio = (int) 0;
                        break;
                }//switch
                resultadosParticipante.Add(maratonU);
            }//foreach
            return resultadosParticipante;
        }//obtenerMaratones
    }
}
