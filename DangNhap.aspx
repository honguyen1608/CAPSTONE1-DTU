<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<script runat="server">


    
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 301px;
        }
        .auto-style16 {
            width: 301px;
            text-align: center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
        <div>
            <h1 style="text-align: center" class="auto-style15">ĐĂNG NHẬP</h1>
            <div class="auto-style16">
                <br />
                Tên đăng nhập:&nbsp;&nbsp;<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <br />
                Mật Khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btn_login" runat="server" OnClick="Button1_Click" Text="Đăng nhập." />
                <br />
                <asp:Label ID="lb_thongBao" runat="server"></asp:Label>
            </div>
        </div>
</body>
</asp:Content>

