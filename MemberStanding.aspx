<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberStanding.aspx.cs" Inherits="MentorAppFinal.MemberStanding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <h1>Member Standing</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="HawkID" DataSourceID="SqlDataSource1" Width="499px">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
            <ControlStyle CssClass="Center" />
            <FooterStyle CssClass="Center" />
            <HeaderStyle CssClass="Center" />
            <ItemStyle CssClass="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Position" HeaderText="Position" ReadOnly="True" SortExpression="Position" />
            <asp:BoundField DataField="HawkID" HeaderText="HawkID" ReadOnly="True" SortExpression="HawkID" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Name,  CASE WHEN Position = 1 THEN 'Mentor' ELSE 'Mentee' END AS Position, HawkID
FROM [Members]"></asp:SqlDataSource>

</asp:Content>
