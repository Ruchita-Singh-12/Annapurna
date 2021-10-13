<%@ Page Title="" Language="C#" MasterPageFile="~/CustMaster.Master" AutoEventWireup="true" CodeBehind="UpdateStatus.aspx.cs" Inherits="Project.UpdateStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
         table td tr {
                background-color: white;
            }

   

       
        .auto-style2 {
            width: 607px;
        }

   

       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <table style="height: 149px">
    
            <tr>
                
                 <td align="center" colspan="2" class="auto-style2">Change Status</td>

            </tr>
           
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" style="margin-left: 222px" Text="Update Payment Status" Width="187px" />
                </td>
                
            </tr>
            

        </table>
    
    </div>
</asp:Content>
