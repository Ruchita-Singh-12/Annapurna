<%@ Page Title="" Language="C#" MasterPageFile="~/DelMaster.Master" AutoEventWireup="true" CodeBehind="Delivery_Person_Details.aspx.cs" Inherits="Project.Delivery_Person_Details" %>
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
                
                 <td align="center" colspan="2">DELIVERY PERSON DETAILS</td>

            </tr>
            <tr>
                <td>Delivery Person ID:</td>
                <td class="auto-style2"><asp:TextBox ID="dpID" runat="server" Width="235px"></asp:TextBox><asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" Width="88px" /></td>
            </tr>
            <tr>
                <td>Delivery Person Name:</td>
                <td class="auto-style2"> <asp:TextBox ID="dpName" runat="server" Width="235px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Delivery Person email:</td>
                <td class="auto-style2"> <asp:TextBox ID="dpmail" runat="server" Width="235px"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Delivery Person phone no.:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="dpphn" runat="server" Width="235px"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Delivery Person Address:</td>
            <td class="auto-style2">
                <asp:TextBox ID="dpadd" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
            <tr>
                <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" Width="84px" style="margin-left: 0px" />
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" style="margin-left: 94px" Width="88px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" />
                </td>
            </tr>


        </table>
    
    </div>
</asp:Content>
