<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ViewAndEditOrder.aspx.cs" Inherits="Project.ViewAndEditOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width:86%; background-color:white;">
        <tr>
            <td class="style1">
                <strong>View and Edit Order</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
             <div id="dvGrid" style="padding: 10px; width: 844px; overflow:scroll;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound"
                    DataKeyNames="OrderID" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                    PageSize="3" AllowPaging="false" OnPageIndexChanging="OnPaging" OnRowUpdating="OnRowUpdating"
                    OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." Width="450">

                <Columns>
                    <asp:TemplateField HeaderText="Order ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("OrderID") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtID" runat="server" Text='<%# Eval("OrderID") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblIID" runat="server" Text='<%# Eval("ItemID") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtIID" runat="server" Text='<%# Eval("ItemID") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblCID" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCID" runat="server" Text='<%# Eval("CustomerID") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Subscription" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblSub" runat="server" Text='<%# Eval("Subscription") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtSub" runat="server" Text='<%# Eval("Subscription") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        

                    <asp:TemplateField HeaderText="Date" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdate" runat="server" Text='<%# Eval("Date") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Num of orders" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblodr" runat="server" Text='<%# Eval("NumberOfOrders") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtodr" runat="server" Text='<%# Eval("NumberOfOrders") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Customer Address" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblCadd" runat="server" Text='<%# Eval("CustomerAddress") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCadd" runat="server" Text='<%# Eval("CustomerAddress") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="Supplier Address" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblSadd" runat="server" Text='<%# Eval("SupplierAddress") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtSadd" runat="server" Text='<%# Eval("SupplierAddress") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                     <asp:TemplateField HeaderText="Total Amount" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblamt" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtamt" runat="server" Text='<%# Eval("TotalAmount") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="Payment Status" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblps" runat="server" Text='<%# Eval("PaymentStatus") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtps" runat="server" Text='<%# Eval("PaymentStatus") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                            ItemStyle-Width="150" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
