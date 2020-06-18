<%@<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MentorAppFinal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<style>
    .container { 
        height: 200px;
        position: relative;
        border: 3px solid lightblue; 
    }

    .vertical-center {
        margin: 0;
        position: absolute;
        top: 90%;
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
    }
</style>

<h2>Member Login</h2>

<div class="container">
  <div class="vertical-center">
  <button>Submit</button>
  <button>Forget username/password?</button>
  </div>
    <p>Username</p>
    <input id="Text1" type="text" />
    <p>Password</p>
    <input id="Password1" type="password" />
</div>



</asp:Content>
