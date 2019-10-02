<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        </style>
    <link href="CSS/CSSLogin.css" rel="stylesheet" type="text/css" />
</head>
<body class="main-bg">
    <form id="form1" runat="server">
        <div class="login-container text-c animated flipInX">
                <div>
                        <h1 ><img src="Images/Loginlogo.png" class="img" </h1>
                </div>
                    <h1>Sign In</h1>
                <div class="container-content">
                    <form class="margin-t">
            <div class="form-group">
        <p class="auto-style2">
        <asp:TextBox ID="txtUser" runat="server" placeholder="Username" required="" Height="34px" Width="303px"></asp:TextBox>
        </p>
                </div>
                        <div class="form-group">
        <p class="auto-style2">
        <asp:TextBox ID="txtPass" runat="server" placeholder="*****" required="" Height="37px" Width="302px" TextMode="Password"></asp:TextBox>
        </p>
      </div>
        <p style="text-align: center" class="text-c">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="  Đăng Nhập" style="color: #FFFFFF; text-align: left; background-color: #996600" Height="37px" Width="106px" />
        </p>
                        <a class="text-whitesmoke text-center" href="Register.aspx"><small>Do not have an account?</small></a>
         </form>
                    <p class="margin-t text-whitesmoke"><small> SD2H &copy; 2019-2020</small> </p>
                </div>
        </div>
    </form>
</body>
</html>
