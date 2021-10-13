<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Project.ForgotPassword" %>

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
            width: 245px;
        }

    </style>
     
</head>
        <body style="background-image: url('IMAGE/indexpage.jpg');
                background-size: 100% 105%;
                width: 100%;
                height: 100vh;">
            <form id="form2" runat="server">
    <div>
        <table style="width:100%">
            <tr><td class="auto-style1"></td>
                <td class="auto-style3">
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr><td class="auto-style2">
                        <table cellpadding="0" style="height: 250px; width: 413px">
                            <tr>
                                <th colspan="3">
                                Forgot Password
            </th>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style5">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email Id:</asp:Label>

                                </td>
                                <td class="auto-style4">

                                    <asp:TextBox ID="UserName" runat="server" Width="204px"></asp:TextBox>
                                    
                                    <br />
                                    
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Request" Width="73px" OnClick="Request_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style5">
                                    <asp:Label ID="SQLabel" runat="server">Security Question:</asp:Label>
                                </td>
                                <td class="auto-style4">
                                    
                                    <asp:TextBox ID="SQ" runat="server" Width="204px"></asp:TextBox>


                                </td>

                            </tr>
                           
                    <tr>
                                <td align="right" class="auto-style5">
                                    <asp:Label ID="SALabel" runat="server">Security Answer:</asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="SA" runat="server" Width="204px"></asp:TextBox>
                                    


                                </td>

                            </tr> 
                            <tr>
                                <td class="auto-style5"></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Verify" Width="73px" /></td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style5">
                                    <asp:Label ID="Label1" runat="server">Your Password is:</asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="Password" runat="server" Width="204px"></asp:TextBox>
                                    


                                </td>

                            </tr>  
             <tr>
                 <td class="auto-style5"></td>
                 <td>
                     <asp:Button ID="Button3" runat="server" Text="Continue" OnClick="Continue_Click" />
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
