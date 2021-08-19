<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminviewmessage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <center>
<table width="80%" style="font-weight:lighter; margin-top: 45px;" >
<tr>
<td align="right">

<asp:ImageButton ID="ImageButton1" runat="server"   
        ImageUrl="~/images/PrevButton.jpg" Width="40px"/>&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/nxtbutton.jpg"  Width="40px" />

<%--<asp:ImageButton ID="previousbtn" runat="server" ImageUrl="~/images/NextButton.jpg" 
        onclick="previousbtn_Click" ToolTip="Previous messages" />
    &nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="nextbtn" runat="server" 
        ImageUrl="~/images/PreviousButton.jpg" onclick="nextbtn_Click" 
        ToolTip="Next Messages" />
--%>    </td>
</tr>
</table>

   <asp:Repeater ID="Repeater1"  runat="server" onitemcommand="Repeater1_ItemCommand" >
        
        <ItemTemplate>
    <table width="80%" border="0" style="border-style: ; background-color:#DEF2FE; border-color:#0144AC; border-width:2px; border-style; solid;font-weight:lighter">
    <tr>
    <td align="left"><u>Sent By:&nbsp;<asp:Label ID="senderid" Text='<%#Eval("senderid") %>' runat="server"></asp:Label></u></td>
    <td align="right"><u>Sent at:&nbsp;<asp:Label ID="date" Text='<%#Eval("date") %>' runat="server"></asp:Label></u></td>    
    <td align="right"><asp:ImageButton ID="del" CommandName="Delete" ToolTip="Delete Message" runat="server" Width="30px" ImageUrl="~/images/Deleteicon.jpg"  /></td>
    <td>
        <asp:Label ID="msgid" runat="server"  Text='<%#Eval("messageid")%>' Visible="false"></asp:Label></td>
    
    </tr> 
    <tr>
    <td colspan="4">&nbsp;</td>
    </tr>
     <tr>
    <td align="left" colspan="2"><b><font face="comic sans ms" size="2" color="brown"><%#Eval("messages") %></font></b></td>
    
    </tr>
    <tr>
    <td align="left" colspan="4"><asp:ImageButton ID ="reply" runat="server" ToolTip="Send Reply" ImageUrl="~/images/Reply.gif" CommandName="visiblepanel"  Width="80px" />
        </td>
    </tr>
    
    <tr>
    <td colspan="4" align="left">
        <asp:Panel ID="panel1" Visible="false" runat="server">
        <table>
        <tr>
     <td><asp:TextBox ID="replytxt" TextMode="MultiLine" Width="400px" Height="80px" CssClass="textbox" runat="server"></asp:TextBox><br /><br />
    <asp:ImageButton ID="sendrply" ImageUrl="~/images/Send.gif" runat="server" CommandName="sendreply" /> &nbsp;
    <asp:ImageButton ID="cancel" runat="server" ImageUrl="~/images/Cancel.gif" CommandName="cancel" />
    
    </td>    
        </tr>
        </table>
        </asp:Panel>
    </td>
    
    
    </tr>
    </table>
    </ItemTemplate>
        </asp:Repeater>
</center>
</asp:Content>

