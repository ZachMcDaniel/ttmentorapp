<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageTeams.aspx.cs" Inherits="MentorAppFinal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LoginView runat="server">
                            <RoleGroups>
                                <asp:RoleGroup Roles="admin">
                                    <ContentTemplate>
                                             <a runat="server" href="~/Maintenance">Maintenance</a>
                                        </ContentTemplate>
                                    </asp:RoleGroup>
                                </RoleGroups>
                                 </asp:LoginView>
    <h1>Manage Teams</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Majors" HeaderText="Majors" SortExpression="Majors" />
            <asp:BoundField DataField="TeamNumber" HeaderText="TeamNumber" SortExpression="TeamNumber" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], CASE WHEN Position = 1 THEN 'Mentor' ELSE 'Mentee' END AS Position, [Year], [Majors], [TeamNumber] FROM [Members]" UpdateCommand="UPDATE [Members] SET [Name] = @Name, [Position] = @Position, [Phone] = @Phone, [Email] = @Email, [Pronouns] = @Pronouns, [Majors] = @Majors, [TeamNumber] = @TeamNumber"</asp:SqlDataSource>
   

</asp:Content>
