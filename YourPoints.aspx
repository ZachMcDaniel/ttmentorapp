<%@ Page Title="Your Points" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="YourPoints.aspx.cs" Inherits="MentorAppFinal.YourPoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

    <div class="jumbotron">
        <h1>Your Points</h1>
    </div>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="80%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" HeaderStyle-CssClass="centerHeaderText">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="30px"/>
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000000" Height="30px" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="IF OBJECT_ID('TempDB..#Organizer') IS NOT NULL DROP TABLE #Organizer
SELECT 
	a.Title, a.Date, a.StartTime, a.Point, b.HawkID
INTO #Organizer
FROM dbo.EVENT a
	INNER JOIN
	dbo.SignIntoEvent b
	ON a.MeetingCode = b.MeetingCode
	INNER JOIN
	dbo.Members
	ON b.HawkID = Members.HawkID
	where b.HawkID = (select HawkID FROM Members 
	where UserId = (select Id FROM AspNetUsers where Id = @ID))
ORDER BY b.HawkID

IF OBJECT_ID('TempDB..#TotalPoints') IS NOT NULL DROP TABLE #TotalPoints
SELECT 
	a.HawkID, sum(a.Point) AS 'TotalPoints'
INTO #TotalPoints
FROM #Organizer a
GROUP BY a.HawkID

SELECT
	 a.Title as Event, FORMAT(a.Date, 'MM/dd/yyyy') as Date, a.StartTime as Time, a.Point AS Event_Points
	,b.TotalPoints AS Total_Points
FROM #Organizer a
JOIN #TotalPoints b
	ON a.HawkID = b.HawkID
"> 
<SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters> 
    </asp:SqlDataSource>

</asp:Content>
