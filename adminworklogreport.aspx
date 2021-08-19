<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminworklogreport.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

<center>
<u style="color: #000000"> <b>Employee Worklog Report</b></u><br /><br />
<table width="60%">
    
   
                
  <tr>
  <td align="left" colspan="2">
  <asp:GridView ID="workdetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="5" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="450px" 
            ShowFooter="True"  
            DataKeyNames="sno" onpageindexchanging="workdetail_PageIndexChanging" 
          onrowdeleting="workdetail_RowDeleting" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Sno" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:10px"  > <%#Eval("sno") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserId" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:10px" > <%#Eval("userid") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Work Date" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("w_date") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Slot Time" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px"> <%#Eval("s_time") %>  </b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small" >
                <ItemTemplate>
                  &nbsp;&nbsp;&nbsp;  <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" CommandName="delete">Delete</asp:LinkButton>
                </ItemTemplate>
                
                </asp:TemplateField>
            </Columns>
            
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

