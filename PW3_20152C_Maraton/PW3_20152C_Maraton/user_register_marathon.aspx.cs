using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class user_register_marathon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            confirm2.Visible = false;
        }

        protected void registerMarathon(object sender, EventArgs e)
        {
            confirm2.Visible = true;
            registerMaraton.Attributes.Add("class", "hide");

        }
    }
}