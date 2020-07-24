<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="YourAccount.aspx.cs" Inherits="MentorAppFinal.YourAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="jumbotron">
        <h1>Your Profile</h1>
    </div>
<p>Username:  <%: Context.User.Identity.GetUserName()  %></p>
<p>Position:  </p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>



    '

</asp:Content>
