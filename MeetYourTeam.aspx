<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeetYourTeam.aspx.cs" Inherits="MentorAppFinal.MeetYourTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Meet Your Team</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Pronouns" HeaderText="Pronouns" SortExpression="Pronouns" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Majors" HeaderText="Majors" SortExpression="Majors" />
            <asp:BoundField DataField="TeamNumber" HeaderText="TeamNumber" SortExpression="TeamNumber" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], [Position], [Phone], [Email], [Pronouns], [Year], [Majors], [TeamNumber] FROM [Members]" </asp:SqlDataSource>
</asp:Content>
