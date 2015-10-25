using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class user_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void validarFecha(object source, ServerValidateEventArgs args)
        {

                DateTime.ParseExact(args.Value, "d",
                    System.Globalization.DateTimeFormatInfo.InvariantInfo);
                args.IsValid = true;
           
        }

        

        protected void edituserButton_Click(object sender, EventArgs e) {
            if (Page.IsValid) {
                Response.Redirect("/user_edit_confirm.aspx");
            }
          
        }

        protected void cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/user_index.aspx.aspx");
        }
    }
}