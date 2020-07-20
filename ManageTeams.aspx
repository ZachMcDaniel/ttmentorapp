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
    <div class="jumbotron">
        <h1>Manage Teams</h1>
    </div>
    <asp:GridView ID="GridView1" DataKeyNames="Name" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%">
        <Columns>
            
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True"/>
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" ReadOnly="True"/>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" ReadOnly="True"/>
            <asp:BoundField DataField="Majors" HeaderText="Majors" SortExpression="Majors" ReadOnly="True"/>
            <asp:BoundField DataField="TeamNumber" HeaderText="TeamNumber" SortExpression="TeamNumber" />
            <asp:CommandField EditText="Edit Team" ShowEditButton="True" SortExpression="TeamNumber" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], [Position], [Year], [Majors], [TeamNumber] FROM [Members]" 
            UpdateCommand="UPDATE [Members] SET [TeamNumber] = @TeamNumber WHERE [Name] = @original_Name"
            OldValuesParameterFormatString="original_{0}">
            <UpdateParameters>
            <asp:Parameter Name="TeamNumber" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
