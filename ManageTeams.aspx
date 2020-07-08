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


    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="TeamNumber" HeaderText="TeamNumber" SortExpression="TeamNumber" />
      
    
    
            <asp:TemplateField>
        <ItemTemplate>
           <asp:LinkButton ID="btnedit" runat="server" CommandName="Edit" Text="Edit"/>                 
        </ItemTemplate>
        <EditItemTemplate>
           <asp:LinkButton ID="btnupdate" runat="server" CommandName="Update" Text="Update" />
           <asp:LinkButton ID="btncancel" runat="server" CommandName="Cancel" Text="Cancel"/>               
        </EditItemTemplate>             
        </asp:TemplateField> 
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], [Position], [Year], [TeamNumber] FROM [Members]"></asp:SqlDataSource>



</asp:Content>
