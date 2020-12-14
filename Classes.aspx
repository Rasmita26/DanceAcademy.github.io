<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Classes.aspx.cs" Inherits="Classes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <center>
        <h1>
            <asp:Label ID="lbl1" runat="server" Text="Classes Details"  Font-Bold="True" Font-Italic="False" Font-Strikeout="False" Font-Underline="True" ForeColor="Black" ></asp:Label>
        </h1>
            </center>
    </div>
     <div>
         
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="4" HorizontalAlign="Center"  Height="200px" Width="545px" OnRowCommand="grid1_RowCommand" OnSelectedIndexChanged="grid1_SelectedIndexChanged" ForeColor="#333333" GridLines="None">

            <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />

        <Columns>  
            <asp:BoundField DataField = "classId" HeaderText = "Class Id" /> 
             <asp:ImageField DataImageUrlField="photo" ControlStyle-Width="100"
              ControlStyle-Height = "100" HeaderText = "Preview Image">
              <ControlStyle Height="100px" Width="100px"></ControlStyle>
             </asp:ImageField>
             <asp:BoundField DataField = "classname" HeaderText = "Class Name" />
             <asp:BoundField DataField = "duration" HeaderText = "Duration" />
             <asp:BoundField DataField = "fees" HeaderText = "Fees" />
               
             <asp:CommandField HeaderText="Enroll" ShowHeader="True" ShowSelectButton="True" SelectText="Enroll" />
             
             
    </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" BorderStyle="None" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
     <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <asp:label ID="Label2" runat="server" text="Label" Visible="False"></asp:label>
</asp:Content>

					
						
