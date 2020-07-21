<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MentorAppFinal._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



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
  padding-bottom: 20px;
}
    </style> 
    <div class="jumbotron">

        <h1>TippieTech Mentorship</h1>
        <p class="lead">The opportunities are endless.</p>
    </div>
    <p> <a href="/CreateProfile" button class="block">Create Profile &raquo;</a></p>
    <p> <a href="/CheckIntoEvent" button class="block">Check into Event &raquo;</a></p>
    <p> <a href="/YourPoints" button class="block">Your Points &raquo;</a></p>
    <p> <a href="/MeetYourTeam" button class="block">Meet your Team &raquo;</a></p>
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
            <h3>Check us out on Twitter</h3>
            <div class="twitterContainer">
                <a class="twitter-timeline" data-lang="en" data-theme="dark" data-height="300" href="https://twitter.com/TippieTECH?ref_src=twsrc%5Etfw">Tweets by TippieTECH</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>

            <div>
            <img src="Images/FavIcon.png" style="width:100%"/>
            </div>
       </div>
    </div>



</asp:Content>
