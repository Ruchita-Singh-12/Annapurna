<%@ Page Title="" Language="C#" MasterPageFile="~/SupMaster.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="Project.ViewOrder" %>
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
                    Order ID
                </th>
                <th scope="col" style="width: 100px">
                    Item ID
                </th>
                <th scope="col" style="width: 120px">
                    Customer ID
                </th>
                <th scope="col" style="width: 140px">
                    Subscription
                </th>
                <th scope="col" style="width: 140px">
                    Date
                </th>
                <th scope="col" style="width: 140px">
                    No. of Orders
                </th>
                
                <th scope="col" style="width: 140px">
                    Customer Address
                </th>
                <th scope="col" style="width: 140px">
                    Supplier Address
                </th>
                <th scope="col" style="width: 140px">
                    Total Amount
                </th>
                
                <th scope="col" style="width: 140px">
                    Payment Status
                </th>




            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <asp:Label ID="lblOrderId" runat="server" Text='<%# Eval("OrderID") %>' />
            </td>
            <td>
                <asp:Label ID="lblItemId" runat="server" Text='<%# Eval("ItemID") %>' />
            </td>
            <td>
                <asp:Label ID="lblphn" runat="server" Text='<%# Eval("CustomerID") %>' />
            </td>
            <td>
                <asp:Label ID="lblAdd" runat="server" Text='<%# Eval("Subscription") %>' />
            </td>
            <td>
                <asp:Label ID="lbldt" runat="server" Text='<%# Eval("Date") %>' />
            </td>
            <td>
                <asp:Label ID="lblnodr" runat="server" Text='<%# Eval("NumberOfOrders") %>' />
            </td>
            <td>
                <asp:Label ID="lblcadd" runat="server" Text='<%# Eval("CustomerAddress") %>' />
            </td>
            <td>
                <asp:Label ID="lblsadd" runat="server" Text='<%# Eval("SupplierAddress") %>' />
            </td>
            <td>
                <asp:Label ID="lbltotamt" runat="server" Text='<%# Eval("TotalAmount") %>' />
            </td>

            <td>
                <asp:Label ID="lblps" runat="server" Text='<%# Eval("PaymentStatus") %>' />
            </td>



           
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
         
         <tr>
             <td>&nbsp;</td></tr>
    </table>
</asp:Content>
