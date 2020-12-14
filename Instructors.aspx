<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Instructors.aspx.cs" Inherits="Instructors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
        <h1>
            <asp:Label ID="lbl1" runat="server" Text="Instructors Details"  Font-Bold="True" Font-Italic="False" Font-Strikeout="False" Font-Underline="True" ForeColor="Black" ></asp:Label>
        </h1>
            </center>
    </div>
    <div>
        
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="4" HorizontalAlign="Center" Height="199px" Width="500px" GridLines="None" ForeColor="#333333">

            <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />
             
        <Columns>  
            
             <asp:ImageField DataImageUrlField="photo" ControlStyle-Width="100"
              ControlStyle-Height = "100" HeaderText = "Preview Image">
              <ControlStyle Height="100px" Width="100px"></ControlStyle>
             </asp:ImageField>
             <asp:BoundField DataField = "name" HeaderText = "Name" />
             <asp:BoundField DataField = "experience" HeaderText = "Experience" />
             
    </Columns>
             
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
</asp:Content>


