<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add_Event.aspx.cs" Inherits="Add_Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
    <style type="text/css">
        .auto-style1 {
            width: 188px;
        }
        .auto-style3 {
            width: 132px;
        }
        .auto-style4 {
            width: 262px;
        }
        .auto-style5 {
            width: 308px;
        }
    </style>
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="4" cellpadding="4">
       
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblsearch" Text="SEARCH BY" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
              <asp:DropDownList ID="ddl_search" runat="server" ForeColor="Black" OnSelectedIndexChanged="ddl_search_SelectedIndexChanged" OnTextChanged="ddl_search_TextChanged"></asp:DropDownList>
             </td>
            <td class="auto-style5">
                <br/>
                <asp:Button ID="btn_search" runat="server" Text="Search" BackColor="#66FF99" Font-Bold="True" OnClick="btn_search_Click"></asp:Button>
            </td>
            </tr>
        <tr>
             <td class="auto-style4">
                 <br/>
                <asp:Label ID="Label8" runat="server" Text="EVENT ID" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style5">
                <br/>
                <asp:TextBox ID="txt_id" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            </tr>

        <tr>
            <td class="auto-style4">
                <br/>
                <asp:Label ID="Label2" runat="server" Text="EVENT NAME" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style5">
                
                <br/>
                <asp:TextBox ID="txt_event" runat="server" ForeColor="Black"></asp:TextBox>
          
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**" ControlToValidate="txt_event" ForeColor="Yellow"></asp:RequiredFieldValidator></td>
              <td class="auto-style3"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="plz enter only character" ControlToValidate="txt_event"  ValidationExpression="^[A-Za-z]*$" ForeColor="Yellow" Font-Bold="True"></asp:RegularExpressionValidator></td>
        </tr>
               
         <tr>
            <td class="auto-style4">
                <br/>
                <asp:Label ID="Label3" runat="server" Text="PERFORMER" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style5">
                <br/>
                <asp:TextBox ID="txt_performer" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**" ControlToValidate="txt_performer" ForeColor="Yellow"></asp:RequiredFieldValidator>
             </td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="plz enter only character" ControlToValidate="txt_performer"  ValidationExpression="^[A-Za-z]*$" ForeColor="Yellow" Font-Bold="True"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br/>
                <asp:Label ID="Label6" runat="server" Text="DATE" Font-Bold="True" ForeColor="White"></asp:Label></td>

             <td class="auto-style5">
                 <br/>
                <asp:TextBox ID="txt_date"  runat="server" ForeColor="Black" ReadOnly="True"></asp:TextBox></td>
            
            <td>
                <asp:Calendar ID="Cal" runat="server" ForeColor="#0a0170" OnSelectionChanged="Cal_SelectionChanged" Width="243px" ></asp:Calendar></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**" ControlToValidate="txt_date" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
            </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="IMAGE" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
        <td class="auto-style5">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="165px" ForeColor="Black"></asp:FileUpload>
            </td>
     </tr>   
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="TIMING" Font-Bold="True" ForeColor="White" Font-Underline="True"></asp:Label>
            </td>
           
            <td class="auto-style5">
                <asp:Label ID="Label9" runat="server" Text="FROM" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style1">
                <br/>
                <asp:TextBox ID="txt_time1" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <br/>
                <asp:DropDownList ID="ddl_time" runat="server" ForeColor="Black">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="**" ControlToValidate="txt_time1" ForeColor="Yellow"></asp:RequiredFieldValidator>
        </td>
            <td>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Enter Only Number" ControlToValidate="txt_time1" ForeColor="Yellow" MaximumValue="12" MinimumValue="1" Font-Bold="True"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="TO" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <br/>
                <asp:TextBox ID="txt_time3" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <br/>
                <asp:DropDownList ID="ddl_time2" runat="server" ForeColor="Black">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="**" ControlToValidate="txt_time3" ForeColor="Yellow"></asp:RequiredFieldValidator>
        </td>
       <td>
           <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Only Number" ControlToValidate="txt_time3" ForeColor="Yellow" MaximumValue="12" MinimumValue="1" Font-Bold="True"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="VENUE" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td class="auto-style5">
                <br/>
                <asp:TextBox ID="txt_venue" runat="server" ForeColor="Black"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**" ControlToValidate="txt_venue" ForeColor="Yellow"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br/>
                <asp:Button ID="btn_addevent" runat="server" Text="ADD" ForeColor="Black" OnClick="btn_addevent_Click" BackColor="#66FF99" Width="80px" Font-Bold="True" />
            </td>
            <td class="auto-style5">
                <br/>
                <asp:Button ID="btn_update" runat="server" Text="EDIT" ForeColor="Black" OnClick="btn_update_Click" BackColor="#66FF99" Width="80px" Font-Bold="True"  />
             
            </td>
            </tr>
        <tr>
            <td class="auto-style4">
                <br/>
                <asp:Button ID="btn_delete" runat="server" Text="DELETE" ForeColor="Black" OnClick="btn_delete_Click" BackColor="#66FF99" Width="80px" Font-Bold="True"  />
            </td>
           <td class="auto-style5">
               <br/>
               <asp:Button ID="btn_view" runat="server" Text="VIEW" ForeColor="Black" OnClick="btn_view_Click" BackColor="#66FF99" Width="80px" Font-Bold="True"  />
            </td>
      </tr>
    </table>
     <asp:Label ID="lblout" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
</asp:Content>



