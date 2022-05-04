<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="UserCreationAndLogin.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Create a new role: 
            <asp:TextBox ID="NewRole" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="CreateRole" runat="server" Text="Create Role"  OnClick="CreateRole_button"/>
        </div>
    </form>
</body>
</html>
