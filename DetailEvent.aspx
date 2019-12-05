<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetailEvent.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <table class="w-100">   
                <tr>
                    <td>
                        <span class="auto-style10">
                            <%#Eval("MO_TA") %>
                        </span>
                    </td>
                    <br />
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" Height="750px" Width="1000px" ImageUrl='<%# "./Images/"+ Eval("HINH_ANH_SU_KIEN") %>' /></a>
                    </td>
                </tr>
                <br />
                <tr>
                    <td>
                        <p class="auto-style10">
                            <%#Eval("CHI_TIET") %>
                        </p>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
   <br />

</asp:Content>

