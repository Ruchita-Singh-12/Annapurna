<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>

        <style type="text/css">
        .bgimage {
             background-image: url('IMAGE/indexpage.jpg');
             background-size: 100% 102%;
             height:100vh;
             width:100%;
            }
        
        body
        {
            font-family: Arial;
            font-size: 10pt;
                height: 511px;
            }
        input
        {
            }
        table
        {
            border: 1px solid #ccc;
                width: 851px;
            }
        table th
        {
            background-color: #ccc;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
            
        }
            table td tr {
                background-color: lightgrey;
            }
        
        
            .auto-style1 {
                width: 239px;
            }
            .auto-style2 {
                width: 83px;
            }
       
    </style>
</head>
    <body>
    <table class="bgimage">
        <tr>
            <td class="auto-style1"></td>
<td>
        

    <form id="form2" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <th colspan="3">
                User Registration
            </th>
        </tr>
        
        <tr>
            <td>
                User Type
            </td>
            <td>
                <asp:DropDownList ID="drp_usertype" runat="server" Width="248px">
                    <asp:ListItem Value="0" Selected="True"> ----  Select User Type ---- </asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Supplier</asp:ListItem>
                    <asp:ListItem>Delivery Person</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" ErrorMessage="Required" ForeColor="Red" ControlToValidate="drp_usertype"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Username
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Password
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassword" runat="server" />
            </td>
        </tr>
         <tr>
            <td>
                Phone Number
            </td>
            <td>
                <asp:TextBox ID="user_phonenumber" runat="server" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="user_phonenumber" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="^[0-9]{10}$"
                    ControlToValidate="user_phonenumber" ForeColor="Red" ErrorMessage="Invalid Phone Number" />
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="txtEmail" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
            </td>
        </tr>
         <tr>
            <td>
                UserAddress
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtadd"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
               Security Question
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="248px">
                    <asp:ListItem Value="0" Selected="True"> ----  Select  ---- </asp:ListItem>
                    <asp:ListItem>What is your nickname?</asp:ListItem>
                    <asp:ListItem>Which is your favourite book?</asp:ListItem>
                    <asp:ListItem>What was the name of your first school?</asp:ListItem>
                    <asp:ListItem>Which is your favourite color?</asp:ListItem>
                    <asp:ListItem>Which is your favourite movie?</asp:ListItem>
                    <asp:ListItem>Where is your hometown?</asp:ListItem>
                    <asp:ListItem>Who is your ideal?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" InitialValue="0" ErrorMessage="Required" ForeColor="Red" ControlToValidate="DropDownList1"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Security Answer
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="240px" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox1"
                    runat="server" />
            </td>
        </tr>

        <tr>
            <td>
                 <button class="button"><a href="index.html" style="text-decoration:none;">Exit</a></button>
            </td>
            <td>
                <asp:Button ID="Button1" Text="Submit" runat="server" OnClick="RegisterUser" Width="85px" />
            </td>
            <td class="auto-style2">
            </td>
        </tr>
            
    </table>
    </form>
   
    </td>
            </tr>
            </table>
</body>
</html>
    
  
