<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="MentorAppFinal.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

<style>

.responsiveCal {
position: relative; padding-bottom: 75%; height: 0; overflow: hidden;
}
 
.responsiveCal iframe {
position: absolute; top:0; left: 0; width: 100%; height: 100%;
}

.twitterContainer {
  overflow: hidden;
  width: 100%;
  height: 100%;
  padding-bottom: 200px;
}
</style>

<asp:LoginView runat="server">                            <RoleGroups>                                <asp:RoleGroup Roles="admin">                                    <ContentTemplate>                                             <a runat="server" href="~/Maintenance">Maintenance</a>                                        </ContentTemplate>                                    </asp:RoleGroup>                                </RoleGroups>                                 </asp:LoginView>

    <div class="jumbotron">
        <h1>Welcome Administrator!</h1>
    </div>

    <p> <a href="/MemberStanding" button class="block">Member Standing &raquo;</a></p>
    <p> <a href="/MentorshipTeams" button class="block">Mentorship Teams &raquo;</a></p>
    <p> <a href="/CreateEvent" button class="block">Create an Event &raquo;</a></p>
    <p> <a href="/Administrators" button class="block">Administrator Rights &raquo;</a></p>
<div class="row">
        <div class="col-md-8">
            <h3>Upcoming Events</h3>
            <p>
            <div class="responsiveCal">
                <iframe src="https://calendar.google.com/calendar/embed?src=tippietechnology%40gmail.com&ctz=America%2FChicago" style="border: 0" width="400" height="300" frameborder="0" scrolling="no"></iframe>
            </div>
            </p>
         
        </div>
        <div class="col-md-4">
            <h3>Twitter</h3>
            <div class="twitterContainer">
                <a class="twitter-timeline" data-lang="en" data-theme="dark" data-height="300" href="https://twitter.com/TippieTECH?ref_src=twsrc%5Etfw">Tweets by TippieTECH</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>

        </div>
       
    </div>
</asp:Content>



