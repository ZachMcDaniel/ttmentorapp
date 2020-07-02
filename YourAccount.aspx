<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="YourAccount.aspx.cs" Inherits="MentorAppFinal.YourAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="jumbotron">
        <h1>Your Profile</h1>
    </div>
<p>Username:  <%: Context.User.Identity.GetUserName()  %></p>
<p>Position:  </p>





    '

</asp:Content>
