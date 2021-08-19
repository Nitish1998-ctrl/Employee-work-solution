<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="admincreategroup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

    <center>
<table width="80%">
<tr>
<td align="center">

<table border="1" width="100%" style="border-color:Red;border-width:1px">
<tr>
<td width="50%">
<table width="100%"> 
           
             <tr>
             <td colspan="2" align="left"><u>Create A Group</u></td>
             </tr>
           <tr>
             <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
             <td width="37%" align="left">Group Name</td>
             <td align="left"><asp:TextBox ID="grpnametxt"  CssClass="textbox" runat="server" 
                     ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ErrorMessage="*" ControlToValidate="grpnametxt" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
             <td align="left">&nbsp;</td>
             <td align="left">
                 <asp:ImageButton ID="send" runat="server" 
                     
                     ImageUrl="~/images/Create.gif" Height="22px" onclick="send_Click" />
                         
              </td>
              </tr>
              <tr>
              <td>&nbsp;</td><td align="left"><asp:Label ID="result1" runat="server"></asp:Label></td>
             
              </tr>
              <tr><td>&nbsp;</td></tr>
   <tr>           
              
             <td colspan="2" align="left"><u>Assign group to the users</u></td>
             </tr>
             <tr>
             <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
             <td width="37%" align="left"> Group Name</td><td align="left">
                           <asp:DropDownList ID="dd1" runat="server" CssClass="dropdown" 
                                Width="150px" AutoPostBack="True" 
                      Height="20px" onselectedindexchanged="dd1_SelectedIndexChanged" 
                                >
                                <asp:ListItem>--Select Groupname--</asp:ListItem>
                            </asp:DropDownList> 
                 </td>
             </tr>
             <tr>
             <td width="37%" align="left" class="style1"> </td><td align="left" class="style1">
                 <asp:Label ID="grpid" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
             <td width="37%" align="left"> User Id</td><td align="left">
                 <asp:DropDownList ID="useriddropdown" Width="120px" CssClass="dropdown" 
                     runat="server" Height="16px" 
                      /></td>
             </tr>
             <tr>
             <td>&nbsp;</td><td align="left">
             <asp:ImageButton ID="addingroup" runat="server" ImageUrl="~/images/AddinGroup.gif" 
                     Height="25px" Width="99px" onclick="addingroup_Click"  />       
                            </td>
                            </tr>
                            <tr>
              <td>&nbsp;</td><td align="left"><asp:Label ID="result2" runat="server"></asp:Label></td>
             
              </tr>
                                 
               
</table>
</td>
<td valign="top">

<table width="100%"> 
           
             <tr>
             <td colspan="2" align="left"><u>Delete Group</u></td>
             </tr>
           <tr>
             <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
             <td width="37%" align="left">Select Group Name</td>
             <td align="left"><asp:DropDownList CssClass="dropdown" Width="120px" 
                     ID="delgrpdropdown" runat="server" >
                 <asp:ListItem>Select Group</asp:ListItem>
                 <asp:ListItem></asp:ListItem>
                 </asp:DropDownList>
                 </td>
             </tr>
              <tr>
               <td>&nbsp;</td><td align="left">
                  <asp:ImageButton ID="delgrp" runat="server" 
                      ImageUrl="~/images/Delete.gif" Height="23px" Width="82px" 
                       onclick="delgrp_Click" /></td>
               </tr> 
               <tr>
              <td>&nbsp;</td><td align="left"><asp:Label ID="result3" runat="server"></asp:Label></td>
             
              </tr>
             </table>

</td>

</tr>

</table>

</td>
</tr>
</table>

 


</center>

</asp:Content>

