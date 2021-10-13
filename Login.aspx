<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 449px;
            height: 302px;
        }
        .auto-style2 {
            width: 414px;
        }
        .auto-style3 {
            height: 302px;
        }
         table th
        {
            background-color: #ccc;
            color: #333;
            font-weight: bold;
        }
         table td tr {
                background-color: lightgrey;
            }

        .auto-style4 {
            width: 323px;
        }
        .auto-style5 {
            width: 147px;
        }

        .button {
            width: 56px;
            height: 25px;
            margin-left: 81px;
        }

    </style>
</head>
<body style="background-image: url('IMAGE/indexpage.jpg');
                background-size: 100% 105%;
                width: 100%;
                height: 100vh;">
    <form id="form1" runat="server">
    <div>
        <table style="width:100%">
            <tr><td class="auto-style1"></td>
                <td class="auto-style3">
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr><td class="auto-style2">
                        <table cellpadding="0" style="height: 250px; width: 413px">
                            <tr>
                                <th colspan="3">
                                Login
            </th>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style5">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>

                                </td>
                                <td class="auto-style4">

                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControltoValidate="UserName" ErrorMessage="User Name is required" ToolTip="User Name is required" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style5">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlId="Password">Password:</asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ErrorMessage="Password is required" ControlToValidate="Password" ToolTip="Password is required" ValidationGroup="Login1">*</asp:RequiredFieldValidator>


                                </td>

                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>  

                            </tr>
                            <tr>
                                <td class="auto-style5">
                                <a href="Registration.aspx">New User</a>
                                </td>
                                <td align="center" class="auto-style4">
                                    <a href="ForgotPassword.aspx">Forgot Password</a>
                                </td>


                                
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" Text="Login" CommandName="Login" ValidationGroup="Login1" OnClick="LoginButton_Click" style="margin-left: 0px; margin-top: 0px;" Height="28px" Width="85px" />
             
                            </tr>
                            <tr>
                                <td>

                                </td>
                                <td>
                                     <button class="button"><a href="index.html" style="text-decoration:none;">Exit</a></button>

                                </td>
                            </tr>
                            
                                                            
                            
                        </table>
                        </td>

                    </tr>
                </table>
                         </td><td class="auto-style3"></td></tr>
            
        </table>
    
    </div>
    </form>
</body>
</html>
