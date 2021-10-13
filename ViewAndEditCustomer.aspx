<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ViewAndEditCustomer.aspx.cs" Inherits="Project.ViewAndEditCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width:86%; background-color:white;">
        <tr>
            <td class="style1">
                <strong>View and Edit Customers</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
             <div id="dvGrid" style="padding: 10px; width: 628px; overflow:scroll;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound"
                    DataKeyNames="ID" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                    PageSize="3" AllowPaging="false" OnPageIndexChanging="OnPaging" OnRowUpdating="OnRowUpdating"
                    OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." Width="450">

                <Columns>
                        <asp:TemplateField HeaderText="Customer ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtID" runat="server" Text='<%# Eval("ID") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Name" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblCustomername" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCustomername" runat="server" Text='<%# Eval("Username") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Phone Number" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblCustomerphone" runat="server" Text='<%# Eval("UserPhoneno") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCustomerphone" runat="server" Text='<%# Eval("UserPhoneno") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Address" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblCustomerAddress" runat="server" Text='<%# Eval("UserAddress") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCustomerAddress" runat="server" Text='<%# Eval("UserAddress") %>' Width="140"></asp:TextBox>
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
