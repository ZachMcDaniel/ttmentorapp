<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlayingAround.aspx.cs" Inherits="MentorAppFinal.PlayingAround" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
<style>
    h4{
     text-align: center;
    }
    div.blocktext{
     margin-left: auto;
     margin-right: auto;
     width: 30%;
     padding-top:10px;
     padding-bottom:10px;
     padding-left:10px;
     padding-right:10px;
     border-left:hidden;
     background-color:#f3f3f3;
    
    }
</style>
    <div class="jumbotron">

        <h1>Contact Us</h1>
    </div>
    <h4>Questions about our mentorship program? Contact our Director of Internal Affairs:</h4>
    <br />
    <div class="blocktext">
        <p style ="text-align:left"><strong>Name:</strong> Yanni Mihalopoulos</p>
        <p style ="text-align:left"><strong>Email:</strong> <a href="mailto:yanni-mihalopoulos@uiowa.edu">yanni-mihalopoulos@uiowa.edu</a></p>
    </div>
</asp:Content>
