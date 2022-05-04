<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="UserCreationAndLogin.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>

    <style>
        .submitbtn{
            margin:20px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Create New User</h3>
            <p><asp:Label ID="InvalidMsg" runat="server"></asp:Label></p>
            <p><asp:Label ID="ValidMsg" runat="server"></asp:Label></p>
            <table>
                <tr>
                    <td>Username:</td>
                    <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator 
                        Forecolor="Red"
                            ID="UsernameValidator" runat="server" 
                            ControlToValidate="Username"
                            ErrorMessage="Field is required"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator 
                            ID="PasswordValidator" runat="server" 
                        Forecolor="Red"
                            ControlToValidate="Password"
                            ErrorMessage="Field is required"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td>Confirm Password:</td>
                    <td><asp:TextBox ID="CfrmPassword" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator 
                        Forecolor="Red"
                            ID="CfrmPasswordValidator" runat="server" 
                            ControlToValidate="CfrmPassword"
                            ErrorMessage="Field is required"></asp:RequiredFieldValidator></td>
                     <td><asp:CompareValidator ID="PasswordCompareValidator" 
                         runat="server" 
                        Forecolor="Red"
                         ControlToValidate="CfrmPassword"
                         ControlToCompare="Password"
                        ErrorMessage="Passwords don't match"></asp:CompareValidator></td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator 
                        Forecolor="Red"
                            ID="EmailValidator" runat="server" 
                            ControlToValidate="Email"
                            ErrorMessage="Field is required"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td>Security Question:</td>
                    <td><asp:TextBox ID="Security_Question" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator 
                        Forecolor="Red"
                            ID="Security_QuestionValidator" runat="server" 
                            ControlToValidate="Security_Question"
                            ErrorMessage="Field is required"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td>Security Answer:</td>
                    <td><asp:TextBox ID="Security_Answer" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator 
                        Forecolor="Red"
                            ID="Security_AnswerValidator" runat="server" 
                            ControlToValidate="Security_Answer"
                            ErrorMessage="Field is required"></asp:RequiredFieldValidator></td>
                </tr>

                
            </table>

                    <asp:Button ID="Create" runat="server" Text="Create" OnClick="Create_User" CssClass="submitbtn"/>

        </div>
    </form>
</body>
</html>
