<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sellertwo.aspx.cs" Inherits="CMD.MSMK.Admin.Sellertwo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>添加商品信息</h2>
            <table>
                <tr>
                  <td>商品图片：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td>商品名称：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>商品简介：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>商品价格：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>商品简介：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>卖家名字：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                             <asp:ListItem Value="0" Selected="True">请选择</asp:ListItem>
                            <asp:ListItem Value="1">卡西欧</asp:ListItem>
                            <asp:ListItem Value="2">浪琴</asp:ListItem>
                            <asp:ListItem Value="3">阿玛尼</asp:ListItem>
                            <asp:ListItem Value="4">DW</asp:ListItem>
                            <asp:ListItem Value="5">劳力士</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <asp:Button ID="Button1" runat="server" Text="添加" />
                    <asp:Button ID="Button2" runat="server" Text="取消" PostBackUrl="~/Admin/Sellerour.aspx" />
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
