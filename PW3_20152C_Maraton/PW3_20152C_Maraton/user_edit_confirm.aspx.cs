using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3_20152C_Maraton
{
    public partial class user_edit_confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userEditConfirmContent.Visible = true;
            editUserConfirmMessage.Visible = false;
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            userEditConfirmContent.Visible = false;
            editUserConfirmMessage.Visible = true;
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/user_index.aspx");
        }
    }
}