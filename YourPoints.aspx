<%@ Page Title="Your Points" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="YourPoints.aspx.cs" Inherits="MentorAppFinal.YourPoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

    <div class="jumbotron">
        <h1>Your Points</h1>
    </div>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="80%"></asp:GridView>

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
	 a.Title, a.Date, a.StartTime, a.Point
	,b.TotalPoints
FROM #Organizer a
JOIN #TotalPoints b
	ON a.HawkID = b.HawkID
"> 
<SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters> 
    </asp:SqlDataSource>

</asp:Content>
