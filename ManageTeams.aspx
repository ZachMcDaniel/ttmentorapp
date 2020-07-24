<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageTeams.aspx.cs" Inherits="MentorAppFinal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

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
    <asp:GridView ID="GridView1" DataKeyNames="Name" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="center" HeaderStyle-CssClass="centerHeaderText">
        <Columns>
            
            <asp:BoundField DataField="TeamNumber" HeaderText="Team Number" SortExpression="TeamNumber"/>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True"/>
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" ReadOnly="True"/>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" ReadOnly="True"/>
            <asp:BoundField DataField="Majors" HeaderText="Majors" SortExpression="Majors" ReadOnly="True"/>
            <asp:CommandField EditText="Edit Team" ShowEditButton="True" SortExpression="TeamNumber" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="30px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000000" Height="30px"/>
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Name, CASE WHEN Position = 1 THEN 'Mentor' ELSE 'Mentee' END AS Position, CASE WHEN Year = 0 THEN 'Freshman' WHEN Year = 1 THEN 'Sophomore' WHEN Year = 2 THEN 'Junior' WHEN Year = 3 THEN 'Senior' ELSE 'Other' End As Year, Phone, Email, Pronouns, CASE WHEN Majors = 0 THEN 'Pre-Business' WHEN Majors = 1 THEN 'BAIS' WHEN Majors = 2 THEN 'Finance' WHEN Majors = 3 THEN 'Accounting' WHEN Majors = 4 THEN 'Economics' WHEN Majors = 5 THEN 'Management' WHEN Majors = 6 THEN 'Marketing' WHEN Majors = 7 THEN 'Computer Science' ELSE 'Other' END AS Majors, TeamNumber from Members" 
            UpdateCommand="UPDATE [Members] SET [TeamNumber] = @TeamNumber WHERE [Name] = @original_Name"
            OldValuesParameterFormatString="original_{0}">
            <UpdateParameters>
            <asp:Parameter Name="TeamNumber" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
