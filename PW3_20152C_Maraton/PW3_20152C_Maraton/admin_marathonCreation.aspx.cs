using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class admin_marathonCreation : System.Web.UI.Page
    {
        public PW3_20152C_TP2_MaratonesEntities contexto2 = new PW3_20152C_TP2_MaratonesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void new_marathon(object sender, EventArgs e)
        {
            var MaratonRep = new MaratonRepositorio(contexto2);
            Maraton maraton = new Maraton();
            maraton.Nombre = marathon_name.Text;
            maraton.MaxParticipantes = Convert.ToInt32(max_participantes.Text);
            maraton.LugarSalida = start_point.Text;
            maraton.ParticipantesEnEspera = Convert.ToInt32(max_participants_waitingList.Text);
            maraton.PrimerPremio = Convert.ToInt32(first_place_prize.Text);
            maraton.SegundoPremio = Convert.ToInt32(second_place_prize.Text);
            maraton.TercerPremio = Convert.ToInt32(third_place_prize.Text);

            MaratonRep.Crear(maraton);
 
        }

        protected void cancel_marathon_creation(object sender, EventArgs e)
        {
            Response.Redirect("/admin_index.aspx");
        }
    }
}