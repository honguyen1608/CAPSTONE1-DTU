<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangOfAdmin.aspx.cs" Inherits="Dulich.TrangOfAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 24px;
            text-align: left;
        }
        .auto-style4 {
            width: 111px;
            text-align: left;
        }
        .auto-style5 {
            height: 24px;
            width: 111px;
            text-align: left;
        }
        .auto-style6 {
            width: 271px;
            height: 31px;
            text-align: left;
        }
        .auto-style7 {
            height: 31px;
            text-align: left;
        }
        .auto-style8 {
            width: 111px;
            height: 23px;
            text-align: left;
        }
        .auto-style9 {
            height: 23px;
            text-align: left;
        }
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            width: 1020px;
            height: 509px;
            margin-left: 0px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 111px;
            text-align: left;
            height: 29px;
        }
        .auto-style14 {
            text-align: left;
            height: 29px;
        }
        .auto-style15 {
            width: 271px;
            text-align: left;
        }
        .auto-style16 {
            width: 271px;
            text-align: left;
            height: 29px;
        }
        .auto-style17 {
            height: 24px;
            width: 271px;
            text-align: left;
        }
        .auto-style18 {
            width: 271px;
            height: 23px;
            text-align: left;
        }
        .auto-style19 {
            font-weight: bold;
            margin-left: 278px;
        }
        .auto-style20 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" style="font-size: 25px">
                        <img alt="" src="Images/du-lich-da-nang-vntrip.jpg" class="auto-style11" /></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: 22px">CẬP NHẬP ĐỊA ĐIỂM</td>
                </tr>
            </table>
        </p>
            <table class="auto-style20">
                <tr>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="ID ĐỊA ĐIỂM:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtIDDiadiem" runat="server" Height="20px" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="TÊN ĐỊA ĐIỂM:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtDiadiem" runat="server" Height="20px" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style13">HÌNH ẢNH:</td>
                    <td class="auto-style14">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="499px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style5">MÔ TẢ:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtMota" runat="server" Height="20px" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">CHI TIẾT:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtChitiet" runat="server" Height="20px" TextMode="MultiLine" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style8">ID MIỀN</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtIDmien" runat="server" Height="20px" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">GHI CHÚ:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtGhichu" runat="server" Height="20px" TextMode="MultiLine" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7"><strong>
            <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" style="color: #FFFFFF; text-align: left; background-color: #996600" Height="32px" Width="98px" CssClass="auto-style10" Font-Size="Small" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblThongbao" runat="server" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
            </table>
        <asp:Button ID="Button1" runat="server" BackColor="#0066FF" CssClass="auto-style19" Font-Size="Small" ForeColor="White" Height="32px" OnClick="Button1_Click" Text="Cập nhập sự kiện" Width="167px" />
    </form>
</body>
</html>
