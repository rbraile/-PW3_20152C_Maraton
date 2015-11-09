using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PW3_20152C_Maraton
{
    public class UsuarioRepositorio
    {
        public PW3_20152C_TP2_MaratonesEntities contexto { get; set; }

        public UsuarioRepositorio(PW3_20152C_TP2_MaratonesEntities contexto)
        {
            this.contexto = contexto;
        }

        public int Crear(Usuario usuario)
        {
            contexto.Usuario.Add(usuario);
            contexto.SaveChanges();
            return usuario.IdUsuario;
        }

        public Usuario getUsuario(string nombre, string clave)
        {
            Usuario usua = (from usuario in contexto.Usuario where usuario.Nombre == nombre && usuario.Contrasenia == clave select usuario).First();

            return usua;
        }
    }
}
