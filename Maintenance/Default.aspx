<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MentorAppFinal.Maintenance.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Maintain Roles and Users in Roles</h1>
    (Only users associated with the Admin role can access this page)   
    
    <div class="row">
        <div class="col-sm-6">
            <h2>Roles</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateColumns="false" SelectMethod="grdRoles_GetData"
                CssClass="table table-bordered table-striped table-condensed" 
                OnPreRender="GridView_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateRows="false" CssClass="table table-bordered table-condensed" 
                SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" 
                InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" 
                        ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-label">Select a user:</label>
                <asp:DropDownList ID="ddlUsers" runat="server" 
                    SelectMethod="grdUsers_GetData" DataValueField="Id"
                    DataTextField="UserName" CssClass="form-control">
                </asp:DropDownList> 
            </div>
            <div class="form-group">
                <label class="control-label">Add one or more roles:</label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" 
                    SelectMethod="grdRoles_GetData" DataValueField="Id"
                    DataTextField="Name" CssClass="form-control"></asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" 
                CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
    <h2>Admins</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
        </asp:GridView>
        
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Email, PhoneNumber FROM [AspNetUserRoles] INNER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id INNER JOIN AspNetUsers ON AspNetUserRoles.UserId = AspNetUsers.Id WHERE (AspNetRoles.Name = 'admin')"></asp:SqlDataSource>

        </div>
        <div class ="col-sm-4">
            <h2>Super Admins</h2>
            <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Email, PhoneNumber FROM [AspNetUserRoles] INNER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id INNER JOIN AspNetUsers ON AspNetUserRoles.UserId = AspNetUsers.Id WHERE (AspNetRoles.Name = 'superadmin')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        </div>
    

    <div class ="col-sm-4">
            <h2>Members</h2>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Email, PhoneNumber FROM [AspNetUserRoles] INNER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id INNER JOIN AspNetUsers ON AspNetUserRoles.UserId = AspNetUsers.Id WHERE (AspNetRoles.Name = 'member')"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

