<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="adminattendencereport.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">

    <center>
<u><b>Attendence Reports</b></u><br /><br />
<table width="60%">
<tr>
<td align="left">Select User Id</td><td align="left"><asp:DropDownList ID="usriddropdown" Width="120px" CssClass="dropdown" runat="server"></asp:DropDownList></td>
</tr>
<tr>
<td align="left" valign="top">Select Year</td><td align="left">
    <asp:DropDownList ID="yeardropdown" Width="120px" CssClass="dropdown" runat="server">
        <asp:ListItem Value="0">--Select Year--</asp:ListItem>
        <asp:ListItem Value="11">2011</asp:ListItem>
        <asp:ListItem Value="12">2012</asp:ListItem>
        <asp:ListItem Value="13">2013</asp:ListItem>
        <asp:ListItem Value="14">2014</asp:ListItem>
        <asp:ListItem Value="15">2015</asp:ListItem>
        <asp:ListItem Value="16">2016</asp:ListItem>
        <asp:ListItem Value="17">2017</asp:ListItem>
        <asp:ListItem Value="18">2018</asp:ListItem>
        <asp:ListItem Value="19">2019</asp:ListItem>
        <asp:ListItem Value="20">2020</asp:ListItem>
        <asp:ListItem Value="21">2021</asp:ListItem>
        <asp:ListItem Value="22">2022</asp:ListItem>
        <asp:ListItem Value="23">2023</asp:ListItem>
        <asp:ListItem Value="24">2024</asp:ListItem>
        <asp:ListItem Value="25">2025</asp:ListItem>
        <asp:ListItem Value="26">2026</asp:ListItem>
        <asp:ListItem Value="27">2027</asp:ListItem>
        <asp:ListItem Value="28">2028</asp:ListItem>
        <asp:ListItem Value="29">2029</asp:ListItem>
        <asp:ListItem Value="30">2030</asp:ListItem>        
    </asp:DropDownList>
</td>
</tr>
<tr>
<td align="left" valign="top">Select Month</td><td align="left">
    <asp:DropDownList ID="monthdropdown" Width="120px" CssClass="dropdown" 
        runat="server" AutoPostBack="True" > 
        
        <asp:ListItem Value="0">--Select Month--</asp:ListItem>
        <asp:ListItem Value="1">January</asp:ListItem>
        <asp:ListItem Value="2">February</asp:ListItem>
        <asp:ListItem Value="3">March</asp:ListItem>
        <asp:ListItem Value="4">April</asp:ListItem>
        <asp:ListItem Value="5">May</asp:ListItem>
        <asp:ListItem Value="6">June</asp:ListItem>
        <asp:ListItem Value="7">July</asp:ListItem>
        <asp:ListItem Value="8">August</asp:ListItem>
        <asp:ListItem Value="9">September</asp:ListItem>
        <asp:ListItem Value="10">October</asp:ListItem>
        <asp:ListItem Value="11">November</asp:ListItem>
        <asp:ListItem Value="12">December</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="show" runat="server" onclick="show_Click" Text="Show" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
</td>
</tr>
</table>
<br />
    <asp:GridView ID="attendencedetail" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="5" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="400px" 
            ShowFooter="True"  
            DataKeyNames="userid" 
            onpageindexchanging="attendencedetail_PageIndexChanging"   >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderText="User Id" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("userid") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                
                <ItemTemplate>
                <b  style="margin-left:30px"  > <%#Eval("l_date") %></b>
                </ItemTemplate>
                
<HeaderStyle Font-Size="Small" ForeColor="White"></HeaderStyle>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="In Time" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:30px" > <%#Eval("l_time") %></b>
                </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Out Time" HeaderStyle-ForeColor="White" HeaderStyle-Font-Size="Small">
                <ItemTemplate>
                <b  style="margin-left:30px" > <%#Eval("l_out_time") %></b>
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

</center>
</asp:Content>

