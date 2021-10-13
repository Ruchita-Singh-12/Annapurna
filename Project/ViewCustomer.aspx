<%@ Page Title="" Language="C#" MasterPageFile="~/SupMaster.Master" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="Project.ViewCustomer" %>
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
                    CustomerID
                </th>
                <th scope="col" style="width: 100px">
                    CustomerName
                </th>
                <th scope="col" style="width: 120px">
                    CustomerPhone
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
         
    </table>
</asp:Content>
