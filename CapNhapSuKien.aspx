<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="CapNhapSuKien.aspx.cs" Inherits="CapNhapSuKien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
            width: 100%;
        margin-right: 0px;
    }
        .auto-style12 {
            text-align: left;
        }
        .auto-style15 {
        width: 232px;
        text-align: left;
    }
        .auto-style13 {
            width: 111px;
            height: 29px;
        }
        .auto-style14 {
            text-align: left;
            height: 29px;
        }
        .auto-style16 {
            width: 232px;
            text-align: left;
            height: 29px;
        }
        .auto-style5 {
            height: 24px;
            width: 111px;
            }
        .auto-style17 {
            height: 24px;
            width: 232px;
            text-align: left;
        }
        .auto-style8 {
            width: 111px;
            height: 23px;
            }
        .auto-style9 {
            height: 23px;
            text-align: left;
        }
        .auto-style18 {
            width: 232px;
            height: 23px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style20">
    <tr>
        <td class="auto-style4" colspan="3"><strong>CẬP NHẬP SỰ KIỆN</strong></td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td>TÊN SỰ KIỆN</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtSukien" runat="server" Height="20px" Width="494px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style13">HÌNH ẢNH:</td>
        <td class="auto-style14">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="499px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td class="auto-style5">MÔ TẢ:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtMota" runat="server" Height="20px" Width="494px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td>CHI TIẾT:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtChitiet" runat="server" Height="20px" TextMode="MultiLine" Width="494px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style8">ID MIỀN</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtIDmien" runat="server" Height="20px" Width="494px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style12"><strong>
            <asp:Button ID="btnThem" runat="server" CssClass="auto-style10" Font-Size="Small" Height="32px" OnClick="btnThem_Click" style="color: #FFFFFF; text-align: left; background-color: #996600" Text="Thêm" Width="98px" />
            <asp:Button ID="btnSua" runat="server" CssClass="auto-style10" Font-Size="Small" Height="32px" OnClick="btnSua_Click" style="color: #FFFFFF; text-align: left; background-color: #996600" Text="Sửa" Width="98px" />
            <asp:Button ID="btnXoa" runat="server" CssClass="auto-style10" Font-Size="Small" Height="32px" OnClick="btnXoa_Click" style="color: #FFFFFF; text-align: left; background-color: #996600" Text="Xóa" Width="98px" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style4"></td>
        <td>
            <asp:Label ID="lblThongbao" runat="server" Font-Size="Large"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

