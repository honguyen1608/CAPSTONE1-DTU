<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center" class="auto-style1">ĐĂNG NHẬP</h1>
        <p class="auto-style2">
            Tên đăng nhập :
        <asp:TextBox ID="txtLogin" runat="server" Height="19px" Width="305px"></asp:TextBox>
        </p>
        <p class="auto-style2">
            Mật khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="txtPass" runat="server" Height="16px" Width="320px" TextMode="Password"></asp:TextBox>
        </p>
      
        <p style="text-align: center">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Đăng Nhập" style="color: #FFFFFF; text-align: left; background-color: #FF0000" />
        </p>
        <p style="text-align: left">
            <asp:Label ID="lblThongBao" runat="server"></asp:Label>
        </p>
        </div>
    </form>
</body>
</html>
