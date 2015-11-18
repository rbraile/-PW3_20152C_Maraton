using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class admin_marathonResultUpload1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Session["usuarioNivel"].Equals("Admin"))
                {
                    Response.Redirect("/index.aspx");
                }
                else
                {
                    using (PW3_20152C_TP2_MaratonesEntities contexto = new PW3_20152C_TP2_MaratonesEntities())
                    {
                        MaratonRepositorio maratonRep = new MaratonRepositorio(contexto);
                        maratones.DataSource = maratonRep.getMaratonesFinalizadas();
                        maratones.DataBind();
                    }
                }//else
            }
            catch
            {
                Response.Redirect("/error.aspx");
            }
        }

        protected void upload_result(object sender, EventArgs e)
        {
            Response.Redirect("/admin_marathonResultUpload_confirm.aspx");
        }

    }
}