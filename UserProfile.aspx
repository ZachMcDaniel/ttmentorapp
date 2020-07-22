<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="MentorAppFinal.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

    <div class="jumbotron">
        <h1>Your Mentorship Profile</h1>
    </div>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="DECLARE @ID varchar(50)
SELECT 
    *
FROM Members
WHERE HawkID = (select HawkID FROM Members
WHERE UserId = (select Id FROM AspNetUsers where Id = @ID))
">

<SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters> 

    </asp:SqlDataSource>

</asp:Content>
