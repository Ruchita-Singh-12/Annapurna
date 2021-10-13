<%@ Page Title="" Language="C#" MasterPageFile="~/CustMaster.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Project.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
       
         table td tr {
                background-color: white;
            }

   

       
         .auto-style2 {
             width: 480px;
         }

   

       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <table style="height: 128px">
    
            <tr>
                <td align="center" class="auto-style2">
                
                SELECT PAYMENT MODE
                    </td>

            </tr>
       
            <tr>
                <td  align="center" class="auto-style2">
                    <asp:RadioButtonList ID="rdbtn" runat="server"
      onselectedindexchanged="rdbtn_SelectedIndexChanged" AutoPostBack="true">
      <asp:ListItem Text="Online" Value="1"></asp:ListItem>
      <asp:ListItem Text="Offline" Value="2"></asp:ListItem>
      
</asp:RadioButtonList>

                    </td>
                </tr>
            


        </table>
    
    </div>
</asp:Content>
