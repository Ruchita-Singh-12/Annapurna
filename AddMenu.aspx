<%@ Page Title="" Language="C#" MasterPageFile="~/SupMaster.Master" AutoEventWireup="true" CodeBehind="AddMenu.aspx.cs" Inherits="Project.AddMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
         table td tr {
                background-color: white;
            }

   

        .auto-style2 {
            width: 380px;
        }
        .auto-style3 {
            height: 45px;
        }
        .auto-style4 {
            width: 380px;
            height: 45px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
         <table>
    
            <tr>
                
                 <td align="center" colspan="2">Menu</td>

            </tr>
           
            <tr>
                <td>Item Name:</td>
                <td class="auto-style2"> <asp:TextBox ID="IName" runat="server" Width="235px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td class="auto-style2"><asp:DropDownList ID="drp_category" runat="server" Width="248px">
                    <asp:ListItem Value="0" Selected="True"> ----  Select  ---- </asp:ListItem>
                    <asp:ListItem>Breakfast</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:DropDownList> </td>
            </tr> 
           
             
            <tr>
            <td>Supplier Name:</td>
            <td class="auto-style2">
                <asp:TextBox ID="Sname" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
              <tr>
                <td class="auto-style3">Description:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Desc" runat="server" Width="235px" Height="51px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Rate:</td>
            <td class="auto-style2">
                <asp:TextBox ID="Rate" runat="server" Width="235px"></asp:TextBox></td >
                </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnsave" runat="server" Text="Add" OnClick="btnsave_click" Width="88px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Clear" Width="83px" />
                
                </td>
            </tr>


        </table>
    
    </div>
</asp:Content>
