<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="USER NAME" Font-Bold="True" ForeColor="White"></asp:Label>
        </td>
            <td>
                <asp:TextBox ID="txt_username" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            <td>
                <br />
                <br />
            </td>
            </tr>
        
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="PASSWORD" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txt_password" runat="server" ForeColor="Black" TextMode="Password" ViewStateMode="Disabled"></asp:TextBox>
                </td>
             <td>
                 <br />
                <br />
            </td>
            </tr>
        <tr>
            <td class="auto-style1"></td>
            <td>
                <asp:Button ID="btn_login" runat="server" Text="LOGIN" BackColor="#99FF99" Font-Bold="True" ForeColor="Black" OnClick="btn_login_Click" />
                </td>
             <td>
                 <br />
                <br />
            </td>
            </tr>

        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="White" NavigateUrl="~/Register.aspx">NEW USER ?</asp:HyperLink>
                </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="White" NavigateUrl="~/Forgotpass.aspx">FORGOT PASSWORD</asp:HyperLink>
                </td>
            </tr>

        </table>
</asp:Content>

