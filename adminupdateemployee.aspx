<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminupdateemployee.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

<center>
<u>Update Employee Account</u><br /><br />
      
<table width="80%">
<tr>
<td align="center">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="20" 
        ForeColor="White" GridLines="None" PageSize="5"  
        Width="650px" Font-Size="Medium" ShowFooter="True" 
        onrowediting="GridView1_RowEditing" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
         onrowdatabound="GridView1_RowDataBound" 
        onrowupdating="GridView1_RowUpdating" DataKeyNames="userid" 
        onpageindexchanging="GridView1_PageIndexChanging"  >
        <AlternatingRowStyle BackColor="White"  />
        <Columns>
            <asp:TemplateField HeaderText="User id" HeaderStyle-Font-Size="Small"  HeaderStyle-ForeColor ="white">
            
            <ItemTemplate>
            
           <b style="margin-left: 15px"  > <%#Eval("userid") %></b>
            </ItemTemplate>
            
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
            
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Address" HeaderStyle-Font-Size="Small"  HeaderStyle-ForeColor ="white">
            <ItemTemplate>
          <b style="margin-left: 18px">  <%#Eval("address") %></b>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="address" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
            </EditItemTemplate>
            
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
            
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Phone no." HeaderStyle-Font-Size="Small"  HeaderStyle-ForeColor ="white">
            <ItemTemplate>
            <b style="margin-left: 22px"><%#Eval("phone") %></b>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="phone" runat="server" Text='<%#Eval("phone") %>'></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="phone" ErrorMessage="10 no. for Mobile !!" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </EditItemTemplate>
            
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
            
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="E-mail" HeaderStyle-Font-Size="Small"  HeaderStyle-ForeColor ="white">
            <ItemTemplate>
            <b style="margin-left: 18px"><%#Eval("mailid") %></b>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="mailid" runat="server" Text='<%#Eval("mailid") %>' Width="150px"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="mailid" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </EditItemTemplate>
            
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
            
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Branch Id" HeaderStyle-Font-Size="Small"  HeaderStyle-ForeColor ="white">
            <ItemTemplate>
           <b style="margin-left: 22px"> <%#Eval("branchid") %></b>
            </ItemTemplate>
                <EditItemTemplate>
                <asp:DropDownList  ID="branchdrop" runat="server" Width="80px"  >
                </asp:DropDownList>
                </EditItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Update" HeaderStyle-Font-Size="Small"  HeaderStyle-ForeColor ="white" HeaderStyle-Width="100px">
            <ItemTemplate>
            <b style="margin-left: 27px"><asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit" ForeColor="blue">Edit</asp:LinkButton></b>
            </ItemTemplate>
            <EditItemTemplate  >
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="blue" CommandName="update">Update</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="blue" CommandName="cancel">Cancel</asp:LinkButton>
            </EditItemTemplate>

<HeaderStyle Font-Size="Small" ForeColor="White" Width="100px"></HeaderStyle>
            </asp:TemplateField>
            
        </Columns>
        <EditRowStyle BackColor="#7C6F57" width="150px"/>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True"  ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"  Font-Size="Medium"/>
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

