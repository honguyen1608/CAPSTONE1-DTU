<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListDestination.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="popular-destination-area section-gap">
        <div class="container">
            <div class="title text-center">
		             <h1 class="mb-10">List All Destinations</h1>
		                  <p>We all live in an age that belongs to the young at heart. Life that is becoming extremely fast, day.</p>
            </div>
         <asp:datalist id="DataList1" runat="server" cellpadding="5" cellspacing="5" repeatcolumns="3" RepeatDirection="Horizontal" style="text-align: center" >
                            <ItemTemplate>
                                <td><a href="DetailDestinations.aspx?id=<%#Eval("ID_DIA_DIEM") %>">
                                <asp:Image ID="Image1" runat="server"  Height="280px" Width="380px" ImageUrl='<%# "./Images/"+ Eval("HINH_ANH_DIA_DIEM") %>' />
                              <h4> <%#Eval("TEN_DIA_DIEM") %> </td></h4>
                               
                                <br />                                
                            </ItemTemplate>
                        </asp:datalist>
            </div>
        </section>
</asp:Content>

