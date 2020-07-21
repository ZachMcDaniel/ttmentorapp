<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberStanding.aspx.cs" Inherits="MentorAppFinal.MemberStanding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <h1>Member Standing</h1>

     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="80%"></asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="IF OBJECT_ID('TempDB..#Organizer') IS NOT NULL DROP TABLE #Organizer
SELECT 
	a.Title, a.Date, a.StartTime, a.Point, b.HawkID
INTO #Organizer
FROM dbo.EVENT a
	INNER JOIN
	dbo.SignIntoEvent b
	ON a.MeetingCode = b.MeetingCode
ORDER BY b.HawkID

IF OBJECT_ID('TempDB..#TotalPoints') IS NOT NULL DROP TABLE #TotalPoints
SELECT 
	a.HawkID, sum(a.Point) AS 'TotalPoints'
INTO #TotalPoints
FROM #Organizer a
GROUP BY a.HawkID
ORDER BY a.HawkID


SELECT
	 a.*
	,b.TotalPoints
FROM #Organizer a
JOIN #TotalPoints b
	ON a.HawkID = b.HawkID


        
        "></asp:SqlDataSource>

</asp:Content>
