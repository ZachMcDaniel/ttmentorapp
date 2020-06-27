<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestTest.aspx.cs" Inherits="MentorAppFinal.TestTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron">
        <h1>Create Profile</h1>
    </div>

    <div>
        <label>Position:</label>
        <div>
            <asp:DropDownList ID="ddlPosition" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="None">- Select mentor or mentee: -</asp:ListItem>
                <asp:ListItem Value="1">Mentor</asp:ListItem>
                <asp:ListItem Value="2">Mentee</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />   
    <div>
        <h3>Contact Information:</h3>
    </div>
    <br> <br \ />  
        <div>
            <label>Name:</label>
            <div>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
            </div>
<br> <br \ />
    <div>
        <label>HawkID:</label>
        <div>
            <asp:TextBox ID="txtHawkID" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>University Email:</label>
        <div>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Phone Number:</label>
        <div>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control txtbox" Width="4000px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Hometown, State, Country:</label>
        <div>
            <asp:TextBox ID="txtHometown" runat="server" CssClass="form-control txtbox" Width="4000px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Pronouns:</label>
        <div>
            <asp:TextBox ID="txtPronouns" runat="server" CssClass="form-control txtbox" Width="4000px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Do you have a car on campus?</label>
        <div>
            <asp:DropDownList ID="ddlTransportation" runat="server" CssClass="txtbox" Height="34px" Width="4000px">
                <asp:ListItem Selected="True" Value="None">- Select Yes or No: -</asp:ListItem>
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ /> 
<div>
    <h3>Educational Information:</h3>
</div>
<br> <br \ /> 
    <div class="form-group col-md-12">
        <label class="control-label col-sm-4 left-align">Select Year in School:</label>
        <div class="col-sm-8 left-align">
            <asp:DropDownList ID="ddlYear" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="None">- Select Year in School: -</asp:ListItem>
                <asp:ListItem Value="1">First Year</asp:ListItem>
                <asp:ListItem Value="2">Second Year</asp:ListItem>
                <asp:ListItem Value="3">Third Year</asp:ListItem>
                <asp:ListItem Value="4">Fourth Year</asp:ListItem>
                <asp:ListItem Value="5">Fifth Year</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div class="form-group col-md-12">
        <label class="control-label col-sm-3 left-align">Select Major:</label>
        <div class="col-sm-3 left-align">
            <asp:DropDownList ID="ddlMajor" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="None">- Select Major: -</asp:ListItem>
                <asp:ListItem Value="1">Pre-Business</asp:ListItem>
                <asp:ListItem Value="2">Business Analytics and Information Systems</asp:ListItem>
                <asp:ListItem Value="3">Finance</asp:ListItem>
                <asp:ListItem Value="4">Accounting</asp:ListItem>
                <asp:ListItem Value="5">Economics</asp:ListItem>
                <asp:ListItem Value="6">Management</asp:ListItem>
                <asp:ListItem Value="7">Marketing</asp:ListItem>
                <asp:ListItem Value="8">Computer Science</asp:ListItem>
                <asp:ListItem Value="9">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div class="form-group col-md-12">
        <label class="control-label col-sm-3 left-align">Select Certificate:</label>
        <div class="col-sm-3 left-align">
            <asp:DropDownList ID="ddlCertificate" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="None">- Select Certificate: -</asp:ListItem>
                <asp:ListItem Value="1">Entrepreneurial Management Certificate</asp:ListItem>
                <asp:ListItem Value="2">International Business Certificate</asp:ListItem>
                <asp:ListItem Value="3">Risk Management & Insurance Certificate</asp:ListItem>
                <asp:ListItem Value="4">Leadership Certificate </asp:ListItem>
                <asp:ListItem Value="5">N/A</asp:ListItem>
                <asp:ListItem Value="6">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div class="form-group col-md-12">
        <label class="control-label col-sm-3 left-align">Enter Minor(s):</label>
        <div class="col-sm-3 left-align">
            <asp:TextBox ID="txtMinors" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div class="form-group col-md-12 left-align">
        <label class="control-label col-sm-3 left-align">Select GPA:</label>
        <div class="col-sm-3 left-align">
            <asp:DropDownList ID="ddlGPA" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="None">- Select GPA: -</asp:ListItem>
                <asp:ListItem Value="1">1-1.5</asp:ListItem>
                <asp:ListItem Value="2">1.5-2</asp:ListItem>
                <asp:ListItem Value="3">2-2.5</asp:ListItem>
                <asp:ListItem Value="4">2.5-3</asp:ListItem>
                <asp:ListItem Value="5">3-3.5</asp:ListItem>
                <asp:ListItem Value="6">3.5-4</asp:ListItem>
                <asp:ListItem Value="7">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ /> 
<div>
    <h3>Demographic Information:</h3>
</div>

</asp:Content>
