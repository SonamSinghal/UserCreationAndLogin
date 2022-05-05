<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="UserCreationAndLogin.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>welcome</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.js"></script>

    <style>
        .container{
            margin-top:100px;
            text-align:center;
        }

        .button{
            margin:10px;

        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1>HIII!!!!</h1>
        </div>
        <div class="container">
            <asp:Button CssClass="btn btn-info btn-lg button" ID="CreateRole" 
                runat="server" Text="Create Role" OnClick="CreateRole_Click" />
            
            <asp:Button CssClass="btn btn-info btn-lg button" ID="AssignRole" 
                runat="server" Text="Assign Role" OnClick="AssignRole_Click" />
            
            <asp:Button CssClass="btn btn-info btn-lg button" ID="Register" 
                runat="server" Text="Register User" OnClick="Register_Click" />

        </div>
    </form>
</body>
</html>
