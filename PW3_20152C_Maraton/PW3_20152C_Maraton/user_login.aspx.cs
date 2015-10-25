using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class login : System.Web.UI.Page
    {


        protected void login_user(object sender, EventArgs e)
        {
          
            Response.Redirect("/user_index.aspx");
        }
    }
}