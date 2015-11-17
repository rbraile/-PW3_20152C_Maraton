using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    using clases;
    public partial class home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
            {
                MaratonRepositorio maratonRep = new MaratonRepositorio(contexto);
                Maraton maraton = maratonRep.getMaratonesFinalizadas().First();
                nombre.Text = maraton.Nombre;
                int idUltimaMaraton = maraton.IdMaraton;
                List<UltimaMaraton> uMaraton = maratonRep.getUltimaMaraton(idUltimaMaraton);
                Resultados.DataSource = uMaraton;
                Resultados.DataBind();
            }
        }
    }
}