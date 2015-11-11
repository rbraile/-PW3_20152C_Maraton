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
        
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities()) { 
                confirm2.Visible = false;
                var maratonRep = new MaratonRepositorio(contexto);
                maratones.DataSource = maratonRep.getMaratones();
                maratones.DataBind();
            }
        
        }

        protected void registerMarathon(object sender, EventArgs e)
        {
            confirm2.Visible = true;
            registerMaraton.Attributes.Add("class", "hide");

        }

        protected void maratones_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(e);
            Label2.Text = id.ToString();
        }
    }
}