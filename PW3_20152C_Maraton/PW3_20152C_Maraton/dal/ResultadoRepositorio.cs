using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton
{
    using clases;
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

        public int getCantidadDeUsuarios(int idMaraton)
        {
            return (from resultado in contexto.ResultadoMaratonParticipante
                    where resultado.IdMaraton == idMaraton
                    select resultado).Count();
        }

        public List<ResultadoParticipante> getParticipantesMaraton(int idMaraton) 
        {
           List<ResultadoParticipante> listaParticipantes = new List<ResultadoParticipante>(); 
           List<ResultadoMaratonParticipante> paticipantes = 
               (from resultado in contexto.ResultadoMaratonParticipante 
                        where resultado.IdMaraton == idMaraton select resultado).ToList();

           foreach (ResultadoMaratonParticipante participante in paticipantes)
           {
               listaParticipantes.Add(getMaratonParticipante(participante.IdUsuario, participante.IdMaraton));
           }
           return listaParticipantes;
        }

        public ResultadoParticipante getMaratonParticipante(int idUsuario, int idMaraton)
        {
            UsuarioRepositorio usuarioRep = new UsuarioRepositorio(contexto);
            ResultadoParticipante resultadoParticipante = new ResultadoParticipante();
            Usuario usuarioR = usuarioRep.getUsuarioById(idUsuario);
            ResultadoMaratonParticipante resultados = getResultadoParticipante(idUsuario, idMaraton); 

            resultadoParticipante.Nombre = usuarioR.Nombre;
            resultadoParticipante.IdUsuario = usuarioR.IdUsuario;
            resultadoParticipante.Finalizo = Convert.ToInt32(resultados.Finalizo);
            resultadoParticipante.tiempoLlegada = Convert.ToInt32(resultados.TiempoLlegada);
            resultadoParticipante.PosicionFinal = Convert.ToInt32(resultados.PosicionFinal);
            resultadoParticipante.IdMaraton = idMaraton;
            resultadoParticipante.numeroInscripcion = idMaraton + idUsuario;

            return resultadoParticipante;
        }

        public ResultadoMaratonParticipante getResultadoParticipante(int idUsuario, int idMaraton) 
        {
            return (from resultado in contexto.ResultadoMaratonParticipante
                    where resultado.IdMaraton == idMaraton
                    && resultado.IdUsuario == idUsuario
                    select resultado).Single();
        }
    }
}
