<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ClassesPayroll.aspx.cs" Inherits="ClassesPayroll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style1 {
            width: 146px;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            width: 42px;
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
            <td class="auto-style2">
                </br>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Course Enrollment ID "></asp:Label>
             
            </td>
            <td>
                 </br>
                 <asp:TextBox ID="txt_orderid" runat="server" ForeColor="Black"></asp:TextBox>
                
            </td>
            <td>
                
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                 </br>
                 <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" Text="Class Id"></asp:Label>
               
            </td>
            <td>
                 </br>
                 <asp:TextBox ID="txt_id" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
              
            </td>
            <td>
                
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                 </br>
                 <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White" Text="Class Name"></asp:Label>
                 
            </td>
            <td>
                 </br>
                 <asp:TextBox ID="txt_name" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
                 
            </td>
            <td>
                
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                </br>
                 <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" Text="Description"></asp:Label>
                
            </td>
            <td>
                 </br>
                 <asp:TextBox ID="txt_description" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
                
            </td>
            <td>
                
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                 </br>
                 <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="White" Text="Price"></asp:Label>
                 
            </td>
            <td>
                </br>
                 <asp:TextBox ID="txt_price" runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox>
                 
            </td>
            <td>
                
            </td>
        </tr>
         <%--<tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_qty" runat="server" ForeColor="Black" OnTextChanged="txt_qty_TextChanged"></asp:TextBox><br /><br />
            </td>
            <td>
                
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Total"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_total" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
            </td>
            <td>
                
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style2">
                
            </td>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Next" ForeColor="Black" OnClick="Unnamed3_Click" BackColor="#66FF99" Font-Bold="True"></asp:Button>
            </td>
            <td>
                
            </td>
        </tr>
        </table>
        </asp:Panel>
               
                <asp:Panel runat="server" id="panel2" Visible="False">
                    
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
            <td class="auto-style3">
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
            <td class="auto-style3">
             
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
            <td class="auto-style3">
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
            <td class="auto-style3">
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator5" runat="server" errormessage="enter your cvv no." ControlToValidate="txt_cvv" ForeColor="Yellow">**</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <br />
                <asp:Button ID="btn_finish" runat="server" Text="Pay" BackColor="#66FF99" ForeColor="Black" Height="28px" Width="63px" OnClick="btn_finish_Click" Font-Bold="True" />
            </td>
            
        </tr>
    </table>
                 
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>

</asp:Content>

