using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserCreationAndLogin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateRole_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateRoles.aspx");
        }

        protected void AssignRole_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignRoles.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}