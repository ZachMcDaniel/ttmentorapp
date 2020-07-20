<%@ Page Title="Meet Your Team" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeetYourTeam.aspx.cs" Inherits="MentorAppFinal.MeetYourTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Meet Your Team</h1>
    </div>

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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Name, CASE WHEN Position = 1 THEN 'Mentor' ELSE 'Mentee' END AS Position, CASE WHEN Year = 0 THEN 'Freshman' WHEN Year = 1 THEN 'Sophomore' WHEN Year = 2 THEN 'Junior' WHEN Year = 3 THEN 'Senior' ELSE 'Other' End As Year, Phone, Email, Pronouns, CASE WHEN Majors = 0 THEN 'Pre-Business' WHEN Majors = 1 THEN 'BAIS' WHEN Majors = 2 THEN 'Finance' WHEN Majors = 3 THEN 'Accounting' WHEN Majors = 4 THEN 'Economics' WHEN Majors = 5 THEN 'Management' WHEN Majors = 6 THEN 'Marketing' WHEN Majors = 7 THEN 'Computer Science' ELSE 'Other' END AS Majors, TeamNumber from Members where TeamNumber = (select TeamNumber FROM Members where UserId = (select Id FROM AspNetUsers where Id = @ID) AND TeamNumber iS NOT NULL);">
        <SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters>        
    </asp:SqlDataSource>
</asp:Content>
