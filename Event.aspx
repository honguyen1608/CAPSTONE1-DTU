<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSuKien") %>'></asp:Label>

        </ItemTemplate>
</asp:DataList>
</asp:Content>

