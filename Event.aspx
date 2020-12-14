<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
        <h1>
            <asp:Label ID="lbl1" runat="server" Text="Event Details"  Font-Bold="True" Font-Italic="False" Font-Strikeout="False" Font-Underline="True" ForeColor="Black" ></asp:Label>
        </h1>
            </center>
    </div>
    <div>
        <asp:gridview runat="server" ID="GridView1" AutoGenerateColumns="False" CellPadding="4" Height="226px" HorizontalAlign="Center" Width="721px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="None" ForeColor="#333333">
          <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />

        <Columns> 
            <asp:BoundField DataField = "eventId" HeaderText = "Event Id" /> 
             <asp:ImageField DataImageUrlField="image" ControlStyle-Width="100"
              ControlStyle-Height = "100" HeaderText = "Image">
              <ControlStyle Height="100px" Width="100px"></ControlStyle>
             </asp:ImageField>
             <asp:BoundField DataField = "eventname" HeaderText = "Event Name" />
             <asp:BoundField DataField = "performer" HeaderText = "Performer" />
             <asp:BoundField DataField = "date" HeaderText = "Date" />
             <asp:BoundField DataField = "frm" HeaderText = "From" />
                <asp:BoundField DataField = "too" HeaderText = "To" />
             <asp:CommandField HeaderText="Ticket Booking" ShowHeader="True" ShowSelectButton="True" SelectText="Ticket Booked" />
             
             
    </Columns>
              <EditRowStyle BackColor="#7C6F57" />
              <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:gridview>
    </div>
</asp:Content>



