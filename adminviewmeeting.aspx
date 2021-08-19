<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminviewmeeting.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

<center>
<u><b>Meeting Details</b></u><br /><br />

<asp:GridView ID="meetingdetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="2" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="459px" 
            ShowFooter="True"  
            DataKeyNames="meetingid" 
        onpageindexchanging="meetingdetail_PageIndexChanging" 
        onrowdeleting="meetingdetail_RowDeleting" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Id" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("meetingid") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:30px" > <%#Eval("m_date") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Time" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("m_time") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Purpose" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("purpose") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Agenda" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("agenda") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Conclusion" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("conclusion") %></b>
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


</center>
</asp:Content>

