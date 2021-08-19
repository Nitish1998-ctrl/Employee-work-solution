<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="admincreatemeeting.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

<center>
 <asp:ScriptManager ID="ScriptManager1" runat="server">
                          </asp:ScriptManager>
<table width="70%">
    <tr>
    <td align="left" colspan="2">
        <u><b>Create Meeting</b></u></td>
    </tr>
   <tr><td>&nbsp;</td></tr>        
           
               
                    <br />
                    <tr>
                        <td align="left" width="20%">
                            Meeting Id</td>
                        <td align="left">
                            <asp:TextBox ID="idtxt" runat="server" CssClass="textbox" Width="154px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="idtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="20%">
                            &nbsp;</td>
                        <td align="left" valign="top">

                                  
                                 

                                    
                      </td>  <td rowspan="4" valign="top" align="left">
                         
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>
                              <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                  BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                  Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                                  Width="186px" 
                                  Visible="False" onselectionchanged="Calendar1_SelectionChanged">
                                  <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                  <NextPrevStyle VerticalAlign="Bottom" />
                                  <OtherMonthDayStyle ForeColor="#808080" />
                                  <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                  <SelectorStyle BackColor="#CCCCCC" />
                                  <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                  <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                  <WeekendDayStyle BackColor="#FFFFCC" />
                              </asp:Calendar>
                          </ContentTemplate>
                          </asp:UpdatePanel>
                                          
                          
                            &nbsp;</td>
                      
                          
                    </tr>
                    
                    <tr>
                        <td align="left" width="20%">
                            Time</td>
                        <td align="left">
                            <asp:TextBox ID="timetxt" runat="server" CssClass="textbox" Width="154px" /><font style="font-weight:lighter"><i> &nbsp;e.g- HH:MM</i></font>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Purpose</td>
                        <td align="left">
                            <asp:TextBox ID="purposetxt"  runat="server" CssClass="textbox" 
                                Width="155px" TextMode="MultiLine" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="purposetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Issues Discussed</td>
                        <td align="left">
                            <asp:TextBox ID="issuediscussedtxt" runat="server" CssClass="textbox" 
                                Height="100px" TextMode="MultiLine" Width="175px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="issuediscussedtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Conclusions</td>
                        <td align="left">
                            <asp:TextBox ID="conclusiontxt" runat="server" CssClass="textbox" 
                                Width="156px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="conclusiontxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Date</td>
                        <td align="left">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="datetxt" runat="server" CssClass="textbox" ReadOnly="true" 
                                        Text="Click on image" Width="153px" />
                                    <asp:ImageButton ID="opencal" runat="server" ImageUrl="~/images/calendar.png" 
                                        onclick="opencal_Click" Width="19px" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left">
                             <asp:ImageButton ID="send" runat="server"  
                                  ImageUrl="~/images/Send.gif" Height="24px" onclick="send_Click"/>
                           
                         
                     
                        </td>
                    </tr>
                    <tr><td>&nbsp;</td><td><asp:Label ID="result" runat="server"></asp:Label></td></tr>
   
</table> 
</center>

</asp:Content>

