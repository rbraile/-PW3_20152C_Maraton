using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace PW3_20152C_Maraton
{
    public partial class user_register_marathon : System.Web.UI.Page
    {
        public PW3_20152C_TP2_MaratonesEntities contexto3 = new PW3_20152C_TP2_MaratonesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {


            confirm2.Visible = false;
            var maratonRep = new MaratonRepositorio(contexto3);
            
            maratones.DataSource = maratonRep.getMaratones();
            maratones.DataBind();
        }

        protected void registerMarathon(object sender, EventArgs e)
        {
            confirm2.Visible = true;
            registerMaraton.Attributes.Add("class", "hide");

        }
    }
}