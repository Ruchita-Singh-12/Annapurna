<%@ Page Title="" Language="C#" MasterPageFile="~/CustMaster.Master" AutoEventWireup="true" CodeBehind="ViewMenu.aspx.cs" Inherits="Project.ViewMenu" %>
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
                <strong>View and Edit Menu</strong></td>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="ItemID" PageSize="3" 
                    EmptyDataText="No records has been added." Width="450px" OnRowCommand="GridView1_RowCommand">

                <Columns>
                        <asp:TemplateField HeaderText="Item ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("ItemID") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtID" runat="server" Text='<%# Eval("ItemID") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item Name" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("ItemName") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Category" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCategory" runat="server" Text='<%# Eval("Category") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>

                        

                    <asp:TemplateField HeaderText="Supplier Name" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblSupName" runat="server" Text='<%# Eval("SupplierName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtSupName" runat="server" Text='<%# Eval("SupplierName") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Description" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDesc" runat="server" Text='<%# Eval("Description") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Rate" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblrate" runat="server" Text='<%# Eval("Rate") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtrate" runat="server" Text='<%# Eval("Rate") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>

     
                        
                        <asp:ButtonField Text="Order" ButtonType="Button"  >
                        <ControlStyle Font-Bold="True" />
                        </asp:ButtonField>
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
