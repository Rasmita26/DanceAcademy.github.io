<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .div1 {
            margin-top:30px;
            margin-bottom:0px;
        }
        .auto-style1 {
            width: 86px;
        }
        .auto-style2 {
            width: 13px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="contact" id="contact">
	<div id="particles-js3"></div>      
    <table align="center">
        <tr>
            <td class="auto-style1">
                <br/>
                <asp:label ID="Label1" runat="server" text="NAME" Font-Bold="True" ForeColor="White"></asp:label>
            </td>
            <td>
                <asp:textbox runat="server" class="div1" ID="txt_name" ForeColor="Black"></asp:textbox>
            </td>
            <td class="auto-style2">
                <br/>
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="**" ControlToValidate="txt_name"  ForeColor="Yellow"></asp:requiredfieldvalidator>
            </td>
           <td>
                <br/>
                <asp:regularexpressionvalidator ID="Regularexpressionvalidator1" runat="server" errormessage="Plz enter only character" ControlToValidate="txt_name" ValidationExpression="^[A-Za-z]*$" ForeColor="Yellow" Font-Bold="True"></asp:regularexpressionvalidator>
            </td> 
        </tr>
        <tr>
            <td class="auto-style1">
                <br/>
                <asp:label ID="Label2" runat="server" text="EMAIL ID" Font-Bold="True" ForeColor="White"></asp:label>
            </td>
            <td>
                <asp:textbox runat="server" class="div1" ID="txt_email" ForeColor="Black"></asp:textbox>
            </td>
            <td class="auto-style2">
                <br/>
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" class="div1" errormessage="**" ControlToValidate="txt_email" ForeColor="Yellow"></asp:requiredfieldvalidator>
            </td>
            <td>
                <br/>
                <asp:regularexpressionvalidator ID="Regularexpressionvalidator2" runat="server" class="div1" errormessage="Email Id is incorrect" ControlToValidate="txt_email" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True">Email Id is incorrect</asp:regularexpressionvalidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <br/>
                <asp:label ID="Label3" runat="server" text="COMMENT" Font-Bold="True" ForeColor="White"></asp:label>
            </td>
            <td>
                <asp:textbox runat="server" ID="txt_comment" class="div1" ForeColor="Black" TextMode="MultiLine"></asp:textbox><br />
            </td>
            <td class="auto-style2">
                <br/>
                <asp:requiredfieldvalidator ID="Requiredfieldvalidator3" runat="server" class="div1" errormessage="**" ControlToValidate="txt_comment" ForeColor="Yellow"></asp:requiredfieldvalidator>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td>
                <br/>
                <asp:button runat="server" text="SUBMIT" ID="btn_submit" BackColor="#66FF99" OnClick="btn_submit_Click" Font-Bold="True" />
            </td>
        </tr>
    </table>        </div>
     
</asp:Content>

