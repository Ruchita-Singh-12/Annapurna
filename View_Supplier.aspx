<%@ Page Title="" Language="C#" MasterPageFile="~/DelMaster.Master" AutoEventWireup="true" CodeBehind="View_Supplier.aspx.cs" Inherits="Project.View_Supplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         table td tr {
                background-color: white;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        
<asp:Repeater ID="rptCustomers" runat="server" OnItemCommand="rptCustomers_ItemCommand">
    <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1">
            <tr>
                <th scope="col" style="width: 80px">
                    SupplierID
                </th>
                <th scope="col" style="width: 100px">
                    SupplierName
                </th>
                <th scope="col" style="width: 120px">
                    SupplierPhone
                </th>
                <th scope="col" style="width: 140px">
                    Address
                </th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Username") %>' />
            </td>
            <td>
                <asp:Label ID="lblphn" runat="server" Text='<%# Eval("UserPhoneno") %>' />
            </td>
            <td>
                <asp:Label ID="lblAdd" runat="server" Text='<%# Eval("UserAddress") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
            </td>
            <td style="width:32%;"></td>
        </tr>
         <tr>
             <td>&nbsp;</td></tr>
    </table>
</asp:Content>
