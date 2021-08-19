<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminaddbranch.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

<center>
<table width="50%">
    <tr>
    <td align="left" colspan="2">
        <u><b>Add New Branch</b></u></td>
    </tr>
   <tr><td>&nbsp;</td></tr>     
              <tr>
            <td align="left" width="30%">
                Branch Code</td>
            <td align="left">
                <asp:TextBox ID="branchcodetxt"   runat="server" CssClass="textbox" 
                    Width="109px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="branchcodetxt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                Branch Name</td>
            <td align="left">
                <asp:TextBox ID="branchnametxt"  runat="server" CssClass="textbox" 
                    Width="109px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ControlToValidate="branchnametxt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                Contact No.</td>
            <td align="left">
                <asp:TextBox ID="contacttxt"  runat="server" CssClass="textbox" 
                    Width="109px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ControlToValidate="contacttxt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                <asp:ImageButton ID="send" 
                    runat="server" ImageUrl="~/images/Send.gif" Height="23px" 
                    onclick="send_Click"  />
               
            </td>
        </tr>
        <tr>
        <td>&nbsp;</td><td><asp:Label ID="result" runat="server" Visible="false" Text="Branch added successfully" /></td>
        </tr>
        
</table>
</center>

</asp:Content>

