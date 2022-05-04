using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserCreationAndLogin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUserToUserList();
                BindRolesToList();

                CheckForSelectedUser();
            }
        }

        protected void BindUserToUserList()
        {
            MembershipUserCollection users = Membership.GetAllUsers();

            UserList.DataSource = users;
            UserList.DataBind();
        }

        protected void BindRolesToList()
        {
            string[] roles = Roles.GetAllRoles();

            RoleList.DataSource = roles;
            RoleList.DataBind();
        }

        protected void CheckRolesForSelectedUser()
        {
            string[] roles = Roles.GetAllRoles();

            RoleList.DataSource = roles;
            RoleList.DataBind();
        }

        private void CheckForSelectedUser()
        {
            string selectedUser = UserList.SelectedValue;
            string[] selectedUserRoles = Roles.GetRolesForUser(selectedUser);

            //LOOP THROUGH REPEATERS
            foreach(RepeaterItem item in RoleList.Items)
            {
                // Programmatically reference the CheckBox 
                CheckBox RoleCheckBox = item.FindControl("RoleCheckBox") as CheckBox;
                // See if RoleCheckBox.Text is in selectedUsersRoles 
                if (selectedUserRoles.Contains<string>(RoleCheckBox.Text))
                    RoleCheckBox.Checked = true;
                else
                    RoleCheckBox.Checked = false;
            }
        }
    }
}