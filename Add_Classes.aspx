<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add_Classes.aspx.cs" Inherits="Add_Classes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table cellspacing="4" cellpadding="4">
           
             <tr>
                <td> 
                    <asp:Label ID="Label5" runat="server" Text="SEARCH BY" Font-Bold="True" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                    <asp:DropDownList ID="ddl_search" runat="server" ForeColor="Black" AutoPostBack="True"></asp:DropDownList>&nbsp;&nbsp;&nbsp
                
                    <asp:Button ID="btn_search" Text="Search" BackColor="#66FF99" BorderStyle="Double" runat="server" OnClick="btn_search_Click" Font-Bold="True" />
                </td>
            </tr>
            </table>

            <table id="Table1" runat="server">
            <tr>
                <td class="auto-style1">
                    <br/>
                    <asp:Label ID="Label6" runat="server" Text="COURSE ID" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                     <br/>
                    <asp:TextBox ID="txt_cid" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                     <br/>
                    <asp:Label ID="Label2" runat="server" Text="COURSE NAME" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                     <br/>
                    <asp:TextBox ID="txt_name" class="div1" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="plz enter only character" ControlToValidate="txt_name" ValidationExpression="^[A-Za-z]*$" ForeColor="Yellow" Font-Bold="True"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td class="auto-style1">
                     <br/>
                    <asp:Label ID="Label3" runat="server" Text="DURATION" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                     <br/>
                    <asp:TextBox ID="txt_duration" class="div1" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                     <br/>
                    <asp:Label ID="Label4" runat="server" Text="FEES" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                     <br/>
                    <asp:TextBox ID="txt_fee" class="div1" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                     <br/>
                    <asp:Label ID="Label1" runat="server" Text="PICTURE" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td>
                     <br/>
                    <asp:FileUpload ID="FileUpload1" class="div1" runat="server"  Width="165px" ForeColor="#33CC33"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                     <br/>
                    <asp:Button ID="btn_cadd" runat="server" Text="Add Course" ForeColor="Black" BackColor="#66FF99" OnClick="btn_cadd_Click" Width="106px" Font-Bold="True"  />
                </td>
                
                <td>
                     <br/>
                    <asp:Button ID="btn_cedit" runat="server" Text="Edit Course" ForeColor="Black" BackColor="#66FF99" OnClick="btn_cedit_Click" Width="106px" Font-Bold="True"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                     <br/>
                    <asp:Button ID="btn_cdelete" runat="server" Text="Delete Course" ForeColor="Black" BackColor="#66FF99" OnClick="btn_cdelete_Click" Width="106px" Font-Bold="True" />
                </td>
                <td>
                     <br/>
                    <asp:Button ID="btn_cview" runat="server" Text="View Course" ForeColor="Black" BackColor="#66FF99" OnClick="btn_cview_Click" Width="106px" Font-Bold="True"  />
                </td>
            </tr>
        </table>
    <asp:Label ID="lblout" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
</asp:Content>


