<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllMembers.aspx.cs" Inherits="MentorAppFinal.JessTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

    <style>
        h1{
            text-align: center; 
            font-family: 'Poppins', sans-serif;
        }
        body {
            background-color: white;
            text-align: center;
            color: black;
            font-family: Arial, Helvetica, sans-serif
        }
        card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }
       
    </style>
 
        </style>
    <div class="jumbotron">
        <h1>All Members</h1>
    </div>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>


</asp:Content>
