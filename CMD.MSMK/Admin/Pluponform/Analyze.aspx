<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Analyze.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Analyze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>平台分析</h1>
            <div>
                <h3>人员数</h3>
                <p>买家人数</p>
                <asp:Label ID="lab_buyer" runat="server" Text="1"></asp:Label>
                <p>卖家人数</p>
                <asp:Label ID="lab_seller" runat="server" Text="2"></asp:Label>
                <p>供应商人数</p>
                <asp:Label ID="lab_supplier" runat="server" Text="3"></asp:Label>
                <p>总人数</p>
                <asp:Label ID="lab_headcount" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                <h3>订单分析</h3>
                 <p>未发货</p>
                <asp:Label ID="lab_notdispatched" runat="server" Text="0"></asp:Label>
                <p>待发货</p>
                <%--<asp:Label ID="lab_hump" runat="server" Text="1"></asp:Label>--%>
                <p>已发货</p>
                <asp:Label ID="lab_dispatched" runat="server" Text="2"></asp:Label>
                <p>已完成</p>
                <asp:Label ID="lab_Completed" runat="server" Text="3"></asp:Label>
                <p>退换</p>
                <asp:Label ID="lab_alteration" runat="server" Text="4"></asp:Label>
                <p>总订单数</p>
                <asp:Label ID="lab_countorder" runat="server" Text="5"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
