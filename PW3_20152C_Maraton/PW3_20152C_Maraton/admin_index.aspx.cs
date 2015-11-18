using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class admin_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Session["usuarioNivel"].Equals("Admin"))
                {
                    Response.Redirect("/index.aspx");
                }
            }
            catch
            {
                Response.Redirect("/index.aspx");
            }
        }
        protected void cancel_general_admin(object sender, EventArgs e)
        {
            Response.Redirect("/admin_index.aspx");
        }
    }
}