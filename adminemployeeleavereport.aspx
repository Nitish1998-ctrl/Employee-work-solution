<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminemployeeleavereport.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

    <center>
<u><b>Employee Leave Reports</b></u><br /><br /><br />

<asp:GridView ID="leavedetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="5" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="502px" 
            ShowFooter="True" DataKeyNames="leaveid" 
            onpageindexchanging="leavedetail_PageIndexChanging" 
            onrowdeleting="leavedetail_RowDeleting" 
            onrowcommand="leavedetail_RowCommand" 
            onrowediting="leavedetail_RowEditing" 
            onrowupdating="leavedetail_RowUpdating" 
            onrowcancelingedit="leavedetail_RowCancelingEdit" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>

            <asp:TemplateField HeaderText="Leave Id" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("leaveid") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>

                <asp:TemplateField HeaderText="User Id" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px" >
                    <asp:Label ID="eid" runat="server" Text='<%#Eval("userid") %>'/> </b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Purpose" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:30px" > <%#Eval("purpose") %></b>&nbsp;
                
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="From Date" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("from_date") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="To Date" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:28px" > <%#Eval("to_date") %></b>
                </ItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <asp:LinkButton ID="del" runat="server" Text="Delete" CommandName="delete" ForeColor="Blue"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete"  ForeColor="Blue" CommandName="edit">action</asp:LinkButton>
               




                </ItemTemplate>
                <EditItemTemplate>
                <asp:LinkButton ID="del" runat="server" Text="Delete" CommandName="update" ForeColor="Blue">allow</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete"  ForeColor="Blue" CommandName="cancel">deny</asp:LinkButton>
               
                </EditItemTemplate>

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

