<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="MentorAppFinal.Members" %>
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

    <asp:GridView ID="GridView1" runat="server" Width="100%" DataKeyNames="Id" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
              <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
              <asp:BoundField DataField="Name" HeaderText="Name" >
              <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
            <asp:BoundField DataField="HawkID" HeaderText="HawkID" SortExpression="HawkID">
            <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
              <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete team?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle CssClass="center" />
                        </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.Id, AspNetUsers.Email, Members.Name, Members.HawkID FROM AspNetUsers LEFT OUTER JOIN Members ON AspNetUsers.Id = Members.UserID" UpdateCommand="Begin Transaction;

UPDATE [Members] SET [Email] = @Email, [Name] = @Name, [HawkID] = @HawkID WHERE [UserID] = @original_Id;

UPDATE [AspNetUsers] SET [Email] = @Email WHERE [ID] = @original_Id;

commit;" OldValuesParameterFormatString="original_{0}" DeleteCommand="begin transaction;

DELETE FROM [Members] WHERE [UserId] = @original_Id;

DELETE FROM [AspNetUsers] WHERE [Id] = @original_Id;

commit;" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [Name]) VALUES (@Id, @Email, @Name)">
                     <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="Id" Type="String" />
                         <asp:Parameter Name="Email" Type="String" />
                         <asp:Parameter Name="Name" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                         <asp:Parameter Name="HawkID" />
                         <asp:Parameter Name="original_Id" Type="String" />
                     </UpdateParameters>

    </asp:SqlDataSource>
</asp:Content>