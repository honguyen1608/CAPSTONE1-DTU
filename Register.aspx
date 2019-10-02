<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Register.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    
    <asp:TextBox ID="txtUser" runat="server"  placeholder="Username" Height="22px" Width="167px" />
      <asp:Label ID="lblThongBao1" runat="server" BackColor="Red" style="color: #FF0000; background-color: #FFFFFF"></asp:Label>
    <asp:TextBox ID="txtPass" runat="server" placeholder="Password" TextMode="Password" Height="22px" Width="167px" />
    <asp:TextBox ID="txtRePass" runat="server" placeholder="Retype Password" TextMode="Password" Height="22px" Width="167px" />
      <asp:Label ID="lblThongBao2" runat="server" BackColor="Red" style="color: #FF0000; background-color: #FFFFFF"></asp:Label>
    <asp:Button ID="btnSignUp" runat="server" Onclick="btnSignUp_Click" Text="Sign me up" />
      <br />
      <asp:Label ID="lblThongBao" runat="server" BackColor="Red" style="color: #FF0000; background-color: #FFFFFF"></asp:Label>
  </div>
  
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin facebook">Log in with facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button>
  </div>
  <div class="or">OR</div>
</div>
    </form>
</body>
</html>
