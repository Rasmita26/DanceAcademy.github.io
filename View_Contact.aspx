<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="View_Contact.aspx.cs" Inherits="View_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div>
      <center>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="371px" ForeColor="#333333" GridLines="None"  >
                    <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                    <RowStyle BackColor="#E3EAEB" Height="10px" Width="10px" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
          </center>
           </div>
</asp:Content>

