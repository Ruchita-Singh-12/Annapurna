<%@ Page Title="" Language="C#" MasterPageFile="~/CustMaster.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Project.Order" %>
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
        &nbsp;&nbsp;&nbsp;
        <table>
    
            <tr>
                
                 <td align="center" colspan="2">ORDER</td>

            </tr>
            <tr>
            <td>ItemID:</td>
            <td class="auto-style2">
                <asp:TextBox ID="itemid" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
            <tr>
            <td>CustomerID:</td>
            <td class="auto-style2">
                <asp:TextBox ID="custid" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
          <tr>
            <td>Rate:</td>
            <td class="auto-style2">
                <asp:TextBox ID="rate" runat="server" Width="235px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 28px" Text="Request" Width="100px" />
              </td>
                </tr>  
                
            <tr>
                <td>Subscription:</td>
                <td class="auto-style2">
                <asp:DropDownList ID="sub" runat="server" Width="248px">
                    <asp:ListItem Value="0" Selected="True"> ----  Select  ---- </asp:ListItem>
                    <asp:ListItem>Today</asp:ListItem>
                    <asp:ListItem>Monthly</asp:ListItem>
                    <asp:ListItem>Yearly</asp:ListItem>
                </asp:DropDownList>     
                </td>
            </tr>
            <tr>
            <td>Date:</td>
            <td class="auto-style2">
                <asp:TextBox ID="date" runat="server"></asp:TextBox>   
            </td>
                </tr>
            <tr>
            <td>Number Of Orders:</td>
            <td class="auto-style2">
                <asp:TextBox ID="numodr" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
            <tr>
            <td>Customer Address:</td>
            <td class="auto-style2">
                <asp:TextBox ID="custadd" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
            <tr>
            <td>Supplier Address:</td>
            <td class="auto-style2">
                <asp:TextBox ID="supadd" runat="server" Width="235px"></asp:TextBox></td>
                </tr>
            <tr>
            <td>Total Amount:</td>
            <td class="auto-style2">
                <asp:TextBox ID="amt" runat="server" Width="235px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 3px" Text="Calculate" Width="121px" />
                </td>
                </tr>
            <tr>
            <td>PaymentStatus:</td>
            <td class="auto-style2">
                <asp:TextBox ID="stat" runat="server" Width="235px" ReadOnly="True"></asp:TextBox></td>
                </tr>
    
           <tr>
            <td>
                <asp:Button ID="save_btn" runat="server" Text="Save" Width="82px" OnClick="save_click" /></td>
            <td class="auto-style2">
                <asp:Button ID="pay" runat="server" Text="Save &amp; Make Payment" Width="200px" onclick="pay_click"/>
                </td>
                </tr>


        </table>
    
    </div>
</asp:Content>
