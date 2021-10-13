<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Food order.aspx.cs" Inherits="Project.Food_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td align="center" colspan="2">FOOD ORDER</td>
            </tr>
            <tr>
                <td>Order Item:</td>
                <td>
                    <asp:TextBox ID="orderitm" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>Order Quantity:</td>
                <td>
                    <asp:TextBox ID="orderqty" runat="server"></asp:TextBox>
                </td>
                    </tr>
                <tr>
                <td>Delivery Status:</td>
                <td>
                    <asp:TextBox ID="delstat" runat="server"></asp:TextBox>
                </td>
                    </tr>
                <tr>
                <td>Delivery Address:</td>
                <td>
                    <asp:TextBox ID="deladd" runat="server"></asp:TextBox>
                </td>
                    </tr>
                <tr>
                <td>Order Contact:</td>
                <td>
                    <asp:TextBox ID="ordercont" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
