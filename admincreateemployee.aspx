<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="admincreateemployee.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <script language="javascript" type="text/jscript">
     function xyz(source, args) {
         if (isNaN(args.Value)) {
             args.IsValid = true;
         }
         else {
             args.IsValid = false;
         }
     }
    </script>
<center>
          <table border="1" style="border-width: medium; border-color: #336699;" align="center"><tr><td>
          <table width="500px" align="center" border="0" cellspacing ="5" cellpadding ="2">
          <tr><td colspan ="2" style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: x-large; font-weight: 900;" 
                  align="center">eWork Solutions Pvt. Ltd<br /></td></tr>
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: small; font-weight: 900;" 
                  align="center" colspan="2"> Time & Work Management Company</td></tr><tr><td height="15px"></td></tr>
          
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: large; font-weight: 900;" 
                  align="center" colspan="2"> Employee Registration Form</td></tr><tr><td height="20px"></td></tr>
          
              <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label1" runat="server" Text="User id"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox1" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox2" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox3" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox4" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label5" runat="server" Text="Role"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="126px">
                          <asp:ListItem>Admin</asp:ListItem>
                          <asp:ListItem>Employee</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  </tr>

                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox7" runat="server" Width="175px" style="color: #000000;" 
                          Height="43px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label6" runat="server" Text="Contact No."></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox6" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                  &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                          runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter only 10 no." 
                          ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                  </td>
                  </tr>
                  
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label8" runat="server" Text="E-mail id"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox8" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                          ControlToValidate="TextBox8" ErrorMessage="Invalid E-mail id" ForeColor="Red" 
                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </td>
                  </tr>

                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label9" runat="server" Text="Branch id"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:DropDownList ID="dd" runat="server" Height="21px" Width="126px">
                      </asp:DropDownList>
                  </td>
                  </tr>
                  
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label10" runat="server" Text="Security Question"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="257px" 
                          AutoPostBack="True">
                          <asp:ListItem>What is your first phone no?</asp:ListItem>
                          <asp:ListItem>What is your pet name?</asp:ListItem>
                          <asp:ListItem>What is your childhood name?</asp:ListItem>
                          <asp:ListItem>What is your favorite teacher name?</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  </tr>


                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="right" width="200px" ><asp:Label ID="Label11" runat="server" Text="Answer"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td align ="left">
                      <asp:TextBox ID="TextBox11" runat="server" Width="125px" style="color: #000000;" 
                          Height="23px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                          ErrorMessage="*" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="center"  colspan="2" >
                      <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/images/reg.gif" 
                          Height="31px" onclick="ImageButton1_Click" />&nbsp;&nbsp;&nbsp;
                  
                      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/can.gif" 
                          Height="31px" onclick="ImageButton2_Click" />
                  </td>
                  </tr>
                  
                    
                  <tr><td style="color: #000000; font-family: 'Times New Roman', Times, serif;  font-size: medium; font-weight: 900;" 
                  align="center"  colspan="2" >
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                  </td>
                  </tr>
                  
                    
                  </table>
                  </td></tr></table>
                  </center>
</div>
			</div>
	</div>
	<!-- end content -->
	<!-- start sidebar two -->
	
	<!-- end sidebar two -->
	
<!-- end page -->
<hr />
<!-- start footer -->

<!-- end footer -->
</div>
</asp:Content>

