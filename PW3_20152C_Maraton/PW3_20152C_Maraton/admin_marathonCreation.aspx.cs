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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void new_marathon(object sender, EventArgs e)
        { 
            Response.Redirect("/admin_marathonCreation_confirm.aspx");
        }
    }
}