<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
        {
            width: 92px;
        }
        .style2
        {
            height: 26px;
            width: 92px;
        }
        .auto-style6 {
            width: 10px;
            /*padding-left: 70px;*/
            margin-left:25px;
        }
        .RadioButtonList {
            margin-left:37px;
            width:15px;
        }
        .auto-style11 {
            width: 199px;
            padding-left: 90px;
        }
        .btn1 {
            margin-left:90px;
        }
        .auto-style12 {
            width: 180px;
        }
        .auto-style13 {
            width: 95px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
    <asp:updatepanel ID="Updatepanel1" runat="server">
        <ContentTemplate>
    <asp:panel runat="server" id="panel1">
        <center>
        <table  cellspacing="5" cellpadding="5">
           
        <tr>
            <td class="auto-style11">
          
                <asp:Label ID="Label5" runat="server" Text="TITLE" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>

            <td class="auto-style6">
               
                <asp:DropDownList ID="ddl_title" runat="server" ForeColor="Black" Width="169px">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                </asp:DropDownList>
                
            </td>
          
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="select the type" ControlToValidate="ddl_title" ForeColor="Yellow">**</asp:RequiredFieldValidator></td>
       
        </tr>
         
          <tr>
            <td class="auto-style11">
               <br />
                <asp:Label ID="Label2" runat="server" Text="FULL NAME" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style6">
                <br />
                <asp:TextBox ID="txt_name" runat="server" ForeColor="Black" Width="165px"></asp:TextBox>               
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter The Name" ControlToValidate="txt_name" ForeColor="Yellow">**</asp:RequiredFieldValidator></td>
             </tr>

             <tr>
            <td class="auto-style11">
                <br />
                <asp:Label ID="Label3" runat="server" Text="ADDRESS" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style6">
                <br />
                <asp:TextBox ID="txt_add" runat="server" ForeColor="Black" TextMode="MultiLine"></asp:TextBox>
               
            </td>
            
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter The Address" ControlToValidate="txt_add" ForeColor="Yellow">**</asp:RequiredFieldValidator></td>
        
        </tr>
        <tr>
            <td class="auto-style11">
                <br />
                <asp:Label ID="Label4" runat="server" Text="EMAIL ID" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style6">
                <br />
                <asp:TextBox ID="txt_email" runat="server" ForeColor="Black"></asp:TextBox></td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter The Email-ID" ControlToValidate="txt_email" ForeColor="Yellow">**</asp:RequiredFieldValidator></td>
       
            <td>
                <br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email-ID Is Not Valid !" ControlToValidate="txt_email" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator></td>
          
        </tr>

        <tr>
            <td class="auto-style11">
                <br />
                <asp:Label ID="Label6" runat="server" Text="GENDER" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style6">
                <br />
                <asp:RadioButtonList class="RadioButtonList" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" width="150px" Font-Bold="True" ForeColor="White" >
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList></td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select The Gender" ControlToValidate="RadioButtonList1" ForeColor="Yellow">**</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <br />
                <asp:Label ID="Label1" runat="server" Text="AGE" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style6">
                <br />
                <asp:TextBox ID="txt_age" runat="server" ForeColor="Black"></asp:TextBox></td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="please Enter Age" ControlToValidate="txt_age" ForeColor="Yellow">**</asp:RequiredFieldValidator></td>
        <td>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter age between 5 to 40 " ControlToValidate="txt_age" ForeColor="Yellow" MaximumValue="40" MinimumValue="05" Font-Bold="True"></asp:RangeValidator>
            </td>
        </tr>
            <tr>
                <td class="auto-style11"><br /></td>
                <td class="auto-style6"><br /><asp:Button class="btn1" runat="server" Text="Next" ID="btn_next" OnClick="btn_next_Click" ForeColor="Black" BackColor="#99FF99" Font-Bold="True"></asp:Button></td>
            </tr>
            </table>
        </center>
    </asp:panel>

    <asp:panel runat="server" id="panel2" Visible="False">
        <center>
            <table>
        <tr>
             <td class="auto-style13">
                 <br />
                 <asp:label ID="Label7" runat="server" text="SECURITY QUESTION" Font-Bold="True" ForeColor="White"></asp:label>
             </td>
             <td class="auto-style12">
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
             <td class="auto-style13">
                 <br />
                 <asp:label ID="Label8" runat="server" text="ANSWER" Font-Bold="True" ForeColor="White"></asp:label>
             </td>
             <td class="auto-style12">
                 <br />
                 <asp:textbox runat="server" ID="txt_ans" ForeColor="Black"></asp:textbox>
             </td>
             <td>
                 <br />
                 <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Match The Username on Login form" ControlToValidate="txt_ans" ForeColor="Yellow">**</asp:requiredfieldvalidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style13">
                 <br />
                 <asp:label ID="Label9" runat="server" text="USER NAME" Font-Bold="True" ForeColor="White"></asp:label>
             </td>
             <td class="auto-style12">
                 <br />
                 <asp:textbox runat="server" ID="txt_username" ForeColor="Black"></asp:textbox>
             </td>
             <td>
                 <br />
                 <asp:requiredfieldvalidator ID="Requiredfieldvalidator7" runat="server" errormessage="username is missing" ControlToValidate="txt_username" ForeColor="Yellow">**</asp:requiredfieldvalidator>
             </td>
         </tr>
        <tr>
            <td class="auto-style13">
                <br />
                <asp:Label ID="Label10" runat="server" Text="PASSWORD" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style12">
                <br />
                <asp:TextBox ID="txt_pass" runat="server" ForeColor="Black" TextMode="Password"></asp:TextBox></td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Password" ForeColor="Yellow" ControlToValidate="txt_pass">**</asp:RequiredFieldValidator></td>
        
        </tr>
        <tr>
            <td class="auto-style13">
                <br />
                <asp:Label ID="Label11" runat="server" Text="CONFIRM PASSWORD" Font-Bold="True" ForeColor="White"></asp:Label></td>
           <td class="auto-style12">
               <br />
               <asp:TextBox ID="txt_cpass" runat="server" ForeColor="Black" TextMode="Password"></asp:TextBox></td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Confirm The Password" ForeColor="Yellow" ControlToValidate="txt_cpass">**</asp:RequiredFieldValidator></td>
            <td>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match.Please Check It Again" ControlToCompare="txt_pass" ControlToValidate="txt_cpass" ForeColor="Yellow" Font-Bold="True">Password Not Match.Please Check It Again</asp:CompareValidator></td>
             </tr>
        <tr>
            <td class="auto-style13">
                <br />
                </td>
            <td class="auto-style12">
               
                <asp:Button ID="btn_previous" runat="server" Text="PREVIOUS" ForeColor="Black" OnClick="btn_cancel_Click" BackColor="#99FF99" Font-Bold="True" />
                </td>
            <td class="auto-style12">
                <asp:Button ID="btn_register" runat="server" Text="REGISTER" ForeColor="Black" OnClick="btn_register_Click" BackColor="#99FF99" Font-Bold="True" />&nbsp;</td>
            </td>
        </tr>
         
        </table>
            </center>
    </asp:panel>  
    </ContentTemplate>
    </asp:UpdatePanel>

     <asp:Label ID="lblout" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
</asp:Content>

