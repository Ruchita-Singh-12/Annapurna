<%@ Page Title="" Language="C#" MasterPageFile="~/CustMaster.Master" AutoEventWireup="true" CodeBehind="OnlinePayment.aspx.cs" Inherits="Project.OnlinePayment" %>
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
                
                 <td align="center" colspan="2">Pay Online</td>

            </tr>
           
            <tr>
                <td>Card Number:</td>
                <td class="auto-style2"> <asp:TextBox ID="CNum" runat="server" Width="235px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Name on Card:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Cname" runat="server" Width="235px"></asp:TextBox> </td>
            </tr> 
           
             
            <tr>
            <td>Date of Expiry:</td>
            <td class="auto-style2">
                <asp:TextBox ID="date" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
              <tr>
            <td>CVV:</td>
            <td class="auto-style2">
                <asp:TextBox ID="cvv" runat="server" Width="235px"></asp:TextBox></td >
                </tr>
            
             <tr><td></td>
                 <td class="auto-style2">
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay" Width="82px" />
                 </td>
             </tr>

        </table>
    
    </div>
</asp:Content>
