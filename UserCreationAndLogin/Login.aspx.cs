using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserCreationAndLogin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void Login_Click(object sender, EventArgs e)
        {
            if(Membership.ValidateUser(Username.Text, Password.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(Username.Text, Remember.Checked);
            }
            else
            {
                var s=Membership.GetUser(new Guid("2D998A6A-EACC-4F5C-8BD3-23930B3C7C5B"));
                InvalidMsg.Text = "Invalid Username or Password";
            }
        }
    }
}