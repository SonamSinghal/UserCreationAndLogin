<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UserCreationAndLogin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
    <%--<link href="Content/bootstrap.css" rel="stylesheet" />--%>


    <style type="text/css">
        .tab{
            height:100px;
        }
        .btn{
            margin:10px;
        }

    </style>
</head>
<body style="height: 493px">
    <form id="form1" runat="server">
        <h3 style="text-align:center; height: 51px;">Login Page</h3>
        <div style="container">
            <p style="text-align:center;"><asp:Label ID="InvalidMsg" ForeColor="Red" runat="server"></asp:Label></p>
            <table class="tab">
                <tr>
                    <td>Username:</td>
                    <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" 
                            ControlToValidate="Username"
                            ForeColor="Red"
                            Display="Dynamic"
                            ErrorMessage="Field is Required">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                 <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox></td>
                     <td><asp:RequiredFieldValidator runat="server" 
                            ControlToValidate="Password"
                            ForeColor="Red"
                            Display="Dynamic"
                            ErrorMessage="Field is Required">
                       </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Remember Me?</td>
                    <td>
                        <asp:CheckBox ID="Remember" runat="server" />
                    </td>
                </tr>
                </table>
                <asp:Button ID="Submit1" OnClick="Login_Click" runat="server" Text="Log In" CssClass="btn" />

        </div>
    </form>
</body>
</html>
