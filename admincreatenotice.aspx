<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="admincreatenotice.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

<center>
<u style="color: #000000"> <b>Upload Notice</b></u><br /><br />
<table width="60%">
    
   
                <tr>
                    <td width="30%" align="left" style="color: #000000">
                        Select File to Upload</td>
                    <td align="left">
                        <asp:FileUpload ID="FileUpload1" CssClass="fileupload" runat="server" 
                            ForeColor="Black" Height="26px" Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        &nbsp;</td>
                    <td align="left">
                       <asp:ImageButton ID="upload"  
                            runat="server"  ImageUrl="~/images/upload.gif"  
                            Width="80px" onclick="upload_Click" />
                           
                    </td>
                </tr>
                <tr><td>&nbsp;</td>
                <td align="left"><asp:Label ID="result" runat="server"></asp:Label></td>
                </tr>
                <tr><td align="left" colspan="2" style="color: #000000">Notice Details</td></tr>
                
                <tr>
                <td>&nbsp; </td>

</tr>
  <tr>
  <td align="left" colspan="2">
  <asp:GridView ID="noticedetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="5" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="400px" 
            ShowFooter="True"  
            DataKeyNames="noticeid" 
          onpageindexchanging="noticedetail_PageIndexChanging" 
          onrowdeleting="noticedetail_RowDeleting" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="NoticeId" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("noticeid") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SenderId" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:30px" > <%#Eval("senderid") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("date") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="File Name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" >
                    <asp:LinkButton ID="file" runat="server" Text='<%#Eval("fname") %>' ForeColor="Blue" OnClick="file_click" ></asp:LinkButton> </b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small" >
                <ItemTemplate>
                  &nbsp;&nbsp;&nbsp;  <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" CommandName="delete">Delete</asp:LinkButton>
                </ItemTemplate>
                
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

   </td>
  </tr>
    </table>

</center>

</asp:Content>

