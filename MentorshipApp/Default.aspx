﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MentorshipApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       <style>
 .block {
  display: block;
  width: 100%;
  border: none;
  background-color: #000000;
  color: white;
  padding: 14px 28px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  border-radius: 8px
}

.block:hover {
  background-color: #ddd;
  color: black;
}

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
    <div class="jumbotron">
        <h1>Tippie Tech Mentorship Application</h1>
        <p class="lead">The opportunities are endless.</p>
    </div>
    <p><a href="http://www.asp.net"> <button class="block">Check into a Meeting &raquo;</button></a></p>
    <p><a href="http://www.asp.net"> <button class="block">My Points &raquo;</button></a></p>
    <p><a href="http://www.asp.net"> <button class="block">My Team &raquo;</button></a></p>
    <div class="row">
        <div class="col-md-8">
            <h2>Upcoming Events</h2>
            <p>
            <div class="responsiveCal">
                <iframe src="https://calendar.google.com/calendar/embed?src=tippietechnology%40gmail.com&ctz=America%2FChicago" style="border: 0" width="400" height="300" frameborder="0" scrolling="no"></iframe>
            </div>
            </p>
         
        </div>
        <div class="col-md-4">
            <h2>Check us out on Twitter</h2>
            <div class="twitterContainer">
                <a class="twitter-timeline" data-lang="en" data-theme="dark" data-height="300" href="https://twitter.com/TippieTECH?ref_src=twsrc%5Etfw">Tweets by TippieTECH</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>

        </div>
       
    </div>

</asp:Content>
