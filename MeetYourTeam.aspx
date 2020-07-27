<%@ Page Title="Meet Your Team" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeetYourTeam.aspx.cs" Inherits="MentorAppFinal.MeetYourTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

    <div class="jumbotron">
        <h1>Meet Your Team</h1>
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Pronouns" HeaderText="Pronouns" SortExpression="Pronouns" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Majors" HeaderText="Majors" SortExpression="Majors" />
            <asp:BoundField DataField="TeamNumber" HeaderText="Team Number" SortExpression="TeamNumber" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="30px" CssClass="centerHeaderText"/>
        <PagerStyle BackColor="White" ForeColor="#000066" />
        <RowStyle ForeColor="#000000" Height="30px" HorizontalAlign="center"/>
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Name, CASE WHEN Position = 1 THEN 'Mentor' ELSE 'Mentee' END AS Position, CASE WHEN Year = 1 THEN 'Freshman' WHEN Year = 2 THEN 'Sophomore' WHEN Year = 3 THEN 'Junior' WHEN Year = 4 THEN 'Senior' ELSE 'Other' End As Year, Phone, Email, Pronouns, CASE WHEN Majors = 1 THEN 'Pre-Business' WHEN Majors = 2 THEN 'BAIS' WHEN Majors = 3 THEN 'Finance' WHEN Majors = 4 THEN 'Accounting' WHEN Majors = 5 THEN 'Economics' WHEN Majors = 6 THEN 'Management' WHEN Majors = 7 THEN 'Marketing' WHEN Majors = 8 THEN 'Computer Science' ELSE 'Other' END AS Majors, TeamNumber from Members WHERE DATALENGTH(TeamNumber) > 0  AND TeamNumber = (select TeamNumber FROM Members where UserId = (select Id FROM AspNetUsers where Id = @ID))">
        <SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters>        
    </asp:SqlDataSource>
</asp:Content>
