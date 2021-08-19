<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminsendmessage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

    <center>
    <table style="width: 75%">
    <tr>
    <td align="left" colspan="2">
        <u>Send Message</u></td>
    </tr>
   <tr><td>&nbsp;</td></tr>        
           
                
                    <br />
                    <tr>
                        <td width="20%" align="left">
                            Sender ID</td>
                        <td align="left" class="style1">
                            <asp:TextBox ID="sendertxt" ReadOnly="true" runat="server" CssClass="textbox" 
                                Width="151px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="sendertxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Receiver ID</td>
                        <td align="left" class="style1">
                            <asp:DropDownList ID="receiveList" runat="server" Height="20px" Width="152px" >
                                <asp:ListItem>---Select Receiverid---</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td align="left">
                            Message</td>
                        <td align="left" class="style1">
                            <asp:TextBox ID="messagetxt" runat="server" CssClass="textbox" Height="125px" 
                                TextMode="MultiLine" Width="179px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="messagetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" class="style1">
                             <asp:ImageButton ID="send"  
                                 runat="server"  ImageUrl="~/images/Send.gif" Height="23px" 
                                 onclick="send_Click"  />
                           
                              
                     
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td><td align="left"><asp:Label ID="result" runat="server"></asp:Label></td>
                    </tr>
</table>
</center>

</asp:Content>

