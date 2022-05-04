using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserCreationAndLogin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_User(object sender, EventArgs e)
        {
            MembershipCreateStatus createStatus;
            MembershipUser user = Membership.CreateUser(Username.Text, Password.Text, Email.Text, Security_Question.Text, Security_Answer.Text, true, out createStatus);

            switch (createStatus)
            {
                case MembershipCreateStatus.Success:
                    {
                        ValidMsg.ForeColor = Color.Green;
                        ValidMsg.Text = "The account was created Successfully";
                        Username.Text = String.Empty;
                        Password.Text = String.Empty;
                        CfrmPassword.Text = String.Empty;
                        Email.Text = String.Empty;
                        Security_Question.Text = String.Empty;
                        Security_Answer.Text = String.Empty;
                        break;
                    }
                case MembershipCreateStatus.DuplicateUserName:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "The username already exists";
                        break;
                    }
                case MembershipCreateStatus.InvalidEmail:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "The email is invalid";
                        break;
                    }

                default:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "There was an unknown error; the user account was NOT created.";
                        break;
                    }
            }
        }
    }
}