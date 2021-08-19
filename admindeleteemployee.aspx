<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="admindeleteemployee.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

    <center>
    <u><b>Delete Employee Account</b></u><br /><br /><br />
    
<table width="60%">
    
   <tr><td>&nbsp;</td></tr>        
           
            
                    <br />
                    <tr>
                    <td align="left" width="30%">
                           Select Branch Id &nbsp;</td>
                        <td align="left">
                           <asp:DropDownList ID="dd1" runat="server" CssClass="dropdown" 
                                Width="135px" AutoPostBack="True" onselectedindexchanged="dd1_SelectedIndexChanged" 
                                >
                                <asp:ListItem>--Select BranchId--</asp:ListItem>
                            </asp:DropDownList> &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" width="30%">
                            Select UserID</td>
                        <td align="left">
                            
                            <asp:DropDownList ID="dd2" runat="server" CssClass="dropdown" 
                                Width="135px" AutoPostBack="True">
                                <asp:ListItem>--Select UserId--</asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    
                    <tr><td></td></tr>
                     <tr>
                                <td align="left">
                                    &nbsp;</td>
                                <td align="left">
                                     <asp:ImageButton ID="delete"  
                                         runat="server"  ImageUrl="~/images/Delete.gif" Height="24px" 
                                         Width="84px" onclick="delete_Click"  />
                                         </td>
                                         </tr>
                                         </table>

        </center>
</asp:Content>

