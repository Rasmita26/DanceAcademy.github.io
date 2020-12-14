<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add_Instructors.aspx.cs" Inherits="Add_Instructors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table cellspacing="4" cellpadding="4">
                <tr>
                    <td>
                        <asp:Label ID="lbl_search" runat="server" Text="SEARCH BY ID" Font-Bold="True" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="drp_search" runat="server" ForeColor="Black" OnSelectedIndexChanged="drp_search_SelectedIndexChanged" OnTextChanged="drp_search_TextChanged"></asp:DropDownList>
                    </td>                 
                    <td>
                        <br/>
                        <asp:Button ID="btn_search" runat="server" Text="SEARCH" BackColor="#66FF99" OnClick="btn_search_Click" Font-Bold="True" />
                    </td>                       
                </tr>
         
                <tr>
                    <td class="auto-style1">
                        <br/>
                        <asp:Label ID="lbl_id" runat="server" Text="ID" Font-Bold="True" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <br/>
                        <asp:TextBox ID="txt_id" runat="server" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br/>
                        <asp:Label ID="lbl_photo" runat="server" Text="PHOTO" Font-Bold="True" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <br/>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="165px" ForeColor="#0066FF"  />
                    </td>
                </tr>
                <tr>
                <td class="auto-style1">
                    <br/>
                    <asp:Label ID="Label5" runat="server" Text="TITLE" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <br/>
                    <asp:DropDownList ID="drp_title" runat="server" Width="162px" ForeColor="Black">
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                    </tr>
                <tr>
                <td class="auto-style1">
                    <br/>
                    <asp:Label ID="lbl_fname" runat="server" Text="FIRST NAME" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <br/>
                    <asp:TextBox ID="txt_fname" runat="server" ForeColor="Black" ></asp:TextBox>
                </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="plz enter only character" ControlToValidate="txt_fname" ValidationExpression="^[A-Za-z]*$" ForeColor="Yellow" Font-Bold="True"></asp:RegularExpressionValidator>   </td>
                    </tr>
                <tr>
                <td class="auto-style1">
                    <br/>
                    <asp:Label ID="lbl_lname" runat="server" Text="MIDDLE NAME" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <br/>
                    <asp:TextBox ID="txt_mname" runat="server" ForeColor="Black" ></asp:TextBox>
                </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="plz enter only character" ValidationExpression="^[A-Za-z]*$" ControlToValidate="txt_mname" ForeColor="Yellow" Font-Bold="True"></asp:RegularExpressionValidator></td>
                    </tr>
                <tr>
                <td class="auto-style1">
                    <br/>
                    <asp:Label ID="Label1" runat="server" Text="LAST NAME" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <br/>
                    <asp:TextBox ID="txt_lname" runat="server" ForeColor="Black" ></asp:TextBox>
                </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="plz enter only character" ValidationExpression="^[A-Za-z]*$" ControlToValidate="txt_lname" ForeColor="Yellow" Font-Bold="True"></asp:RegularExpressionValidator></td>
                    </tr>
                 <tr>
                <td class="auto-style1">
                    <br/>
                    <asp:Label ID="Label4" runat="server" Text="EXPERIENCE" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <br/>
                    <asp:TextBox ID="txt_experience" runat="server" ForeColor="Black" ></asp:TextBox>
                </td>
                    </tr>
                <tr>
                    <td class="auto-style1">
                        <br/>
                        <asp:Button ID="btn_add" runat="server" Text="ADD" BackColor="#66FF99"  OnClick="btn_add_Click" Width="70px" Font-Bold="True"  />
                    </td>
                    <td>
                        <br/>
                        <asp:Button ID="btn_edit" runat="server" Text="EDIT" BackColor="#66FF99" OnClick="btn_edit_Click" Width="70px" Font-Bold="True" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <br/>
                        <asp:Button ID="btn_delete" runat="server" Text="DELETE" BackColor="#66FF99" OnClick="btn_delete_Click" Width="70px" Font-Bold="True"  />
                    </td>
                    <td>
                        <br/>
                        <asp:Button ID="btn_view" runat="server" Text="VIEW" BackColor="#66FF99"  OnClick="btn_view_Click" Width="70px" Font-Bold="True"  />
                    </td>
                </tr>
            </table>
        <asp:Label ID="lblout" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
</asp:Content>

