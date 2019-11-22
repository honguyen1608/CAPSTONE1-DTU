<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="CapNhapDiaDiem.aspx.cs" Inherits="CapNhapDiaDiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
            width: 100%;
        margin-bottom: 0px;
    }
        .auto-style15 {
            width: 232px;
            text-align: left;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 126px;
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
        .auto-style17 {
            height: 24px;
            width: 232px;
            text-align: left;
        }
        .auto-style8 {
            width: 126px;
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
        .auto-style21 {
        width: 232px;
        text-align: left;
        height: 20px;
    }
    .auto-style22 {
        height: 20px;
        text-align: center;
            width: 126px;
        }
    .auto-style23 {
        height: 26px;
        width: 232px;
    }
    .auto-style24 {
        text-align: left;
        height: 26px;
    }
    .auto-style26 {
        font-weight: bold;
        margin-left: 76px;
        height: 29px;
    }
    .auto-style27 {
        height: 20px;
    }
        .auto-style28 {
            width: 126px;
        }
        .auto-style29 {
            text-align: left;
            height: 26px;
            width: 126px;
        }
        .auto-style30 {
            font-weight: bold;
            text-align: center;
        }
        .auto-style31 {
            text-align: center;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style20">
    <tr>
        <td class="auto-style30" colspan="3">CẬP NHẬP ĐỊA ĐIỂM</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style28">
            <asp:Label ID="Label2" runat="server" Text="TÊN ĐỊA ĐIỂM:"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtDiadiem" runat="server" Height="20px" Width="494px"></asp:TextBox>
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
        <td class="auto-style16"></td>
        <td class="auto-style13">MÔ TẢ:</td>
        <td class="auto-style26">
            <asp:TextBox ID="txtMota" runat="server" Height="20px" Width="494px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style28">CHI TIẾT:</td>
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
        <td class="auto-style28">GHI CHÚ:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtGhichu" runat="server" Height="20px" TextMode="MultiLine" Width="494px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21"></td>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style27"><strong>
            <asp:Button ID="btnThem" runat="server" CssClass="auto-style10" Font-Size="Small" Height="32px" OnClick="btnThem_Click" style="color: #FFFFFF; text-align: left; background-color: #996600" Text="Thêm" Width="98px" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style29"></td>
        <td class="auto-style24">
            <asp:Label ID="lblThongbao" runat="server" Font-Size="Large"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style31" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="267px" Width="900px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID_DIA_DIEM" HeaderText="ID Địa Điểm" />
                    <asp:BoundField DataField="TEN_DIA_DIEM" HeaderText="Tên Địa Điểm" />
                    <asp:ImageField DataImageUrlField="HINH_ANH_DIA_DIEM" DataImageUrlFormatString="./Images/{0}" HeaderText="Hình Ảnh">
                        <ControlStyle Height="100px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="MO_TA" HeaderText="Mô Tả" />
                    <asp:BoundField DataField="CHI_TIET" HeaderText="Chi Tiết" />
                    <asp:BoundField DataField="ID_MIEN" HeaderText="ID Miền" />
                    <asp:BoundField DataField="GHI_CHU" HeaderText="Ghi Chú" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <strong>
                            <asp:Button ID="btnSua" runat="server" CssClass="auto-style10" Font-Size="Small" Height="32px" OnClick="btnSua_Click" style="color: #FFFFFF; text-align: left; background-color: #996600" Text="Sửa" Width="98px" />
                            <asp:Button ID="btnXoa" runat="server" CssClass="auto-style10" Font-Size="Small" Height="32px" OnClick="btnXoa_Click" style="color: #FFFFFF; text-align: left; background-color: #996600" Text="Xóa" Width="98px" CommandArgument='<%# Eval("ID_DIA_DIEM") %>' />
                            </strong>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

