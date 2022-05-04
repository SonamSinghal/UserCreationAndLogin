using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserCreationAndLogin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateRole_button(object sender, EventArgs e)
        {
            string newRole = NewRole.Text.Trim();

            if (!Roles.RoleExists(newRole))
            {
                //CREATE NEW ROLE
                Roles.CreateRole(newRole);
                NewRole.Text = String.Empty;
            }
        }
    }
}