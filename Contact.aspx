<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MentorAppFinal.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
<style>
    h1{
     text-align: center; 
     font-family: 'Poppins', sans-serif;
    }
    h4{
     text-align: center;
     font-family: 'Poppins', sans-serif;
    }
    div.blocktext{
     margin-left: auto;
     margin-right: auto;
     width: 20em;
     border-left:hidden 2px;
     background-color:#bfeaff;
    
    }
</style>
    <div class="jumbotron">

        <h1>Contact Us</h1>
    </div>
    <h4>Questions about our mentorship program? Contact our Director of Internal Affairs:</h4>

    <div class="blocktext">
        <p><strong>Name:</strong> Yanni Mihalopoulos</p>
        <p><strong>Email:</strong> <a href="mailto:yanni-mihalopoulos@uiowa.edu">yanni-mihalopoulos@uiowa.edu</a></p>
    </div>
</asp:Content>

