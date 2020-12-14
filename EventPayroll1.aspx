<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="EventPayroll1.aspx.cs" Inherits="EventPayroll1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 15px;
        }
        .auto-style2 {
            width: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel runat="server" id="panel1">
    <table align="center" cellspacing="4" cellpadding="4">
        <tr>
            <td>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Booking Id" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_bookingid" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
         <tr>
            <td>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Event Id" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_eventid" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
         <tr>
            <td>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Event Name" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_eventname" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
         <tr>
            <td>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Performer" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_performer" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
         <tr>
            <td>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Price" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_price" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
         <tr>
            <td>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Quantity" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_qty" runat="server" ForeColor="Black" OnTextChanged="txt_qty_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
         
        <tr>
            <td>
                
            </td>
            <td>
                <br/>
                <asp:Button ID="Button1" runat="server" Text="Next" ForeColor="Black" OnClick="btn_next_Click" BackColor="#66FF99" Font-Bold="True"></asp:Button>
            </td>
            <td class="auto-style2">
                
            </td>
        </tr>
        </table>
        </asp:Panel>
                 <asp:Panel runat="server" id="panel2" Visible="False">
                     <center>
                     <table>
                         <tr>
            <td>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Total" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_total" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                
            </td>
        </tr>
                         <tr>
                             <td></td>
                             <td> 
                                 <br />
                                 <asp:Button ID="Button2" runat="server" Text="Previous" ForeColor="Black" OnClick="Button1_Click" BackColor="#66FF99" Font-Bold="True"  />&nbsp;
                                 <asp:Button ID="Button3" runat="server" Text="Next" ForeColor="Black" OnClick="Unnamed4_Click" BackColor="#66FF99" Font-Bold="True"></asp:Button></td>
                             <td></td>
                         </tr>
                     </table>
                         </center>
                     </asp:Panel>
                <asp:Panel runat="server" id="panel3" Visible="False">
                    
                        <table align="center">
                            <tr>
                                <td></td>
                                <td><asp:Label runat="server" Text="Label" id="lblex" Font-Bold="True" ForeColor="White" Visible="False"></asp:Label></td>
                            </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Name On CardHolder" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_creditname" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="enter the credit name" ControlToValidate="txt_creditname" ForeColor="Yellow">**</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Card Type" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:DropDownList ID="ddl_cardtype" runat="server" ForeColor="Black" Height="26px" Width="170px">
                    <asp:ListItem>Credit</asp:ListItem>
                    <asp:ListItem>Debit</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
             
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="select the type of your card " ControlToValidate="ddl_cardtype" ForeColor="Yellow">**</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Expiry mm/yy" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:DropDownList ID="ddl_month" runat="server" ForeColor="Black" Height="24px" Width="168px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator3" runat="server" errormessage="select month" ControlToValidate="ddl_month" ForeColor="Yellow">**</asp:requiredfieldvalidator>
            </td>
            <td>
                <br />
                <asp:DropDownList ID="ddl_year" runat="server" ForeColor="Black" Height="23px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator4" runat="server" errormessage="select year" ControlToValidate="ddl_year" ForeColor="Yellow">**</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label5" runat="server" Text="CVV" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txt_cvv" runat="server" ForeColor="Black" MaxLength="3" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator5" runat="server" errormessage="enter your cvv no." ControlToValidate="txt_cvv" ForeColor="Yellow">**</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <br />
                <asp:Button ID="btn_previous" runat="server" Text="Previous" ForeColor="Black" OnClick="btn_cancel_Click" BackColor="#66FF99" Font-Bold="True" />&nbsp;
                <asp:Button ID="btn_finish" runat="server" Text="Pay" BackColor="#66FF99" ForeColor="Black" Height="28px" Width="101px" OnClick="btn_finish_Click" Font-Bold="True" />
            </td>
            
        </tr>
     </table>
                 
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>

