using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton
{
    public class ResultadoRepositorio
    {
        public PW3_20152C_TP2_MaratonesEntities contexto { get; set; }

        public ResultadoRepositorio(PW3_20152C_TP2_MaratonesEntities contexto)
        {
            this.contexto = contexto;
        }

        public int agregarParticipante(ResultadoMaratonParticipante resultado) {
            contexto.ResultadoMaratonParticipante.Add(resultado);
            contexto.SaveChanges();
            return resultado.IdMaraton;
        }

        public Boolean VerificarYaInscripto(int idUsuario, int idMaraton)
        {
            int count = (from resultado in contexto.ResultadoMaratonParticipante
                    where resultado.IdUsuario == idUsuario
                    && resultado.IdMaraton == idMaraton
                    select resultado).Count();
            if(count != 0) {
                return true;
            }

            return false;
        }

        public Maraton getCantidadDeUsuarios(int idMaraton)
        {
            return (from resultado in contexto.ResultadoMaratonParticipante
                    where resultado.IdMaraton == idMaraton
                    select resultado).Count();
        }
    }
}
