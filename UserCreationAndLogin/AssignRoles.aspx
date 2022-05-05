<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignRoles.aspx.cs" Inherits="UserCreationAndLogin.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="text-align:center;">Manage Roles</h3>

        <div>
            <asp:Label ID="Msg" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div>
            <b>Select a User: </b>
            <asp:DropDownList ID="UserList" runat="server" AutoPostBack="true"
                DataTextField="Username" DataTextValue="Username"></asp:DropDownList>
        </div>
        <div>
            <asp:Repeater ID="RoleList" runat="server">
                <ItemTemplate>
                    <asp:CheckBox ID="RoleCheckBox" runat="server"  AutoPostBack="true"
                        OnCheckedChanged="RoleCheckBox_CheckedChanged"  
                        Text='<%# Container.DataItem %>' />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <%--<div>
            <asp:Button ID="AssignRole" runat="server" Text="Assign Role" OnClick="AssignRole_Click" /></div>--%>
    </form>
</body>
</html>
