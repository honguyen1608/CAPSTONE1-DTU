<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDestinations.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
                        <asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="5" RepeatColumns="3">
                            <ItemTemplate>
                                <td><a href="ChiTietDiaDiem.aspx?id=<%#Eval("HINH_ANH") %>">
                                <asp:Image ID="Image1" runat="server"  Height="200px" Width="250px" ImageUrl='<%# "./Images/"+ Eval("HINH_ANH") %>' />
                                
                            </ItemTemplate>
                        </asp:DataList>
    </p>
    
                </asp:Content>


