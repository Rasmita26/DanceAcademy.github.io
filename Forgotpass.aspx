<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="Forgotpass" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
        <table align="center" cellspacing="5" cellpadding="5">
           
                <tr>
            <td class="auto-style1">
                <br />
                <asp:Label ID="Label4" runat="server" Text="EMAIL ID" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td>
                <br />
                <asp:TextBox ID="txt_email" runat="server" ForeColor="Black"></asp:TextBox></td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter The Email-ID" ControlToValidate="txt_email" ForeColor="Red">*</asp:RequiredFieldValidator></td>
       
            <td>
                <br />
          </td>
          
        </tr>
             <tr>
             <td class="auto-style1">
                 <br />
                 <asp:label ID="Label1" runat="server" text="SECURITY QUESTION" Font-Bold="True" ForeColor="White"></asp:label>
             </td>
             <td>
                 <br />
                 <asp:dropdownlist runat="server" ID="ddl_security" Width="160px" ForeColor="Black">
                     <asp:ListItem>select one</asp:ListItem>
                     <asp:ListItem>favorite book</asp:ListItem>
                     <asp:ListItem>favorite food</asp:ListItem>
                     <asp:ListItem>best friend name</asp:ListItem>
                     <asp:ListItem>favorite colour</asp:ListItem>
                 </asp:dropdownlist>
             </td>
             </tr>
         <tr>
             <td class="auto-style1">
                 <br />
                 <asp:label ID="Label2" runat="server" text="ANSWER" Font-Bold="True" ForeColor="White"></asp:label>
             </td>
             <td>
                 <br />
                 <asp:textbox runat="server" ID="txt_ans" ForeColor="Black"></asp:textbox>
             </td>
             <td>
                 <br />
                 <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Please Enter a Answer " ControlToValidate="txt_ans" ForeColor="Red">*</asp:requiredfieldvalidator>
             </td>

         </tr>

        
            <tr>
                <td class="auto-style1"><br /></td>
                <td><br /><asp:Button runat="server" Text="Submit" ID="btn_submit" ForeColor="Black" OnClick="btn_submit_Click" BackColor="#66FF99" Font-Bold="True"></asp:Button></td>
                
            </tr>
    
                  </table>
          </center>
    <br />
         <table align="center" cellpadding="5" cellspacing="5">
             <tr>
                 <td>
                     <asp:label ID="Label3" runat="server" text="Your Password is:-" Font-Bold="True" ForeColor="White"></asp:label>
                 </td>
                 <td>
                     <asp:label runat="server" ID="labelpass" ForeColor="#66FFFF" Font-Underline="True"></asp:label>
                 </td>
             </tr>
         </table>
       
</asp:Content>

