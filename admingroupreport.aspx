<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="admingroupreport.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

    <center>
<u><b>Employee Group Reports</b></u><br /><br /><br />



<asp:GridView ID="gruopdetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="5" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="400px" 
            ShowFooter="True"  
            
            onpageindexchanging="gruopdetail_PageIndexChanging"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderText="User name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("Fname") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Group Name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("groupname") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
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
</center>
</asp:Content>

