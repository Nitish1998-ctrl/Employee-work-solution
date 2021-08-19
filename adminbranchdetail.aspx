<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminbranchdetail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <center>
<u><b>Branch Details</b></u><br /><br />
        <asp:GridView ID="branchdetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="2" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="400px" 
            ShowFooter="True" onpageindexchanging="branchdetail_PageIndexChanging" 
            DataKeyNames="branchid" onrowdeleting="branchdetail_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Branch code" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("branchid") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Branch Name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:30px" > <%#Eval("branch") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact No " HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("branch_phone") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
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
    
    

</center>

</asp:Content>

