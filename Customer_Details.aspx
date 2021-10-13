<%@ Page Title="" Language="C#" MasterPageFile="~/CustMaster.Master" AutoEventWireup="true" CodeBehind="Customer_Details.aspx.cs" Inherits="Project.Customer_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
         table td tr {
                background-color: white;
            }

   

        .auto-style2 {
            width: 380px;
        }

   

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <table>
    
            <tr>
                
                 <td align="center" colspan="2">CUSTOMER DETAILS</td>

            </tr>
            <tr>
                <td>Customer ID:</td>
                <td class="auto-style2"><asp:TextBox ID="CustID" runat="server" Width="235px"></asp:TextBox><asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" Width="88px" /></td>
            </tr>
            <tr>
                <td>Customer Name:</td>
                <td class="auto-style2"> <asp:TextBox ID="CustName" runat="server" Width="235px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Customer email:</td>
                <td class="auto-style2"> <asp:TextBox ID="Custmail" runat="server" Width="235px"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Customer phone no.:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Custphn" runat="server" Width="235px"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Customer Address:</td>
            <td class="auto-style2">
                <asp:TextBox ID="Custadd" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
            <tr>
                <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" Width="84px" style="margin-left: 0px" />
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" style="margin-left: 94px" Width="88px" />
                    <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" style="margin-left: 92px" />
                </td>
            </tr>


        </table>
    
    </div>

</asp:Content>
