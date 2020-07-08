<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProfile.aspx.cs" Inherits="MentorAppFinal.CreateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    


<fieldset id="form1" runat="server" method="post" class="form-vertical" defaultfocus="txtEmail1" defaultbutton="btnSubmit">
    <style>

    </style>
    <div class="jumbotron">
        <h1>Create Profile</h1>
    </div>
    <div>
        <label>Position:</label>
            <asp:DropDownList ID="ddlPosition" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select mentor or mentee: -</asp:ListItem>
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
            <asp:Label runat="server" AssociatedControlID="txtName">Name (First and Last):</asp:Label>
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control txtbox" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
            </div>
<br> <br \ />
        <div>
            <asp:Label runat="server" AssociatedControlID="txtHawkID">StudentID (numbers):</asp:Label>
                <asp:TextBox runat="server" ID="txtHawkID" CssClass="form-control txtbox" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The HawkID field is required." />
            </div>
<br> <br \ />
        <div>
            <asp:Label runat="server" AssociatedControlID="txtEmail">University Email:</asp:Label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control txtbox" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
            </div>
<br> <br \ />
        <div>
            <asp:Label runat="server" AssociatedControlID="txtPhone">Phone Number:</asp:Label>
                <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control txtbox" TextMode="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Phone Number field is required." />
            </div>
<br> <br \ />
    <div>
        <label>Hometown, State, Country:</label>
            <asp:TextBox ID="txtHometown" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
        <label>Pronouns:</label>
        <div>
            <asp:TextBox ID="txtPronouns" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Do you have a car on campus?</label>
            <asp:DropDownList ID="ddlTransportation" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Yes or No: -</asp:ListItem>
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ /> 
<div>
    <h3>Educational Information:</h3>
</div>
<br> <br \ /> 
    <div>
        <label>Select Year in School:</label>
            <asp:DropDownList ID="ddlYear" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Year in School: -</asp:ListItem>
                <asp:ListItem Value="1">First Year</asp:ListItem>
                <asp:ListItem Value="2">Second Year</asp:ListItem>
                <asp:ListItem Value="3">Third Year</asp:ListItem>
                <asp:ListItem Value="4">Fourth Year</asp:ListItem>
                <asp:ListItem Value="5">Fifth Year</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Major:</label>
            <asp:DropDownList ID="ddlMajor" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Major: -</asp:ListItem>
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
    <div>
        <label>Select Certificate:</label>
            <asp:DropDownList ID="ddlCertificate" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Certificate: -</asp:ListItem>
                <asp:ListItem Value="1">Entrepreneurial Management Certificate</asp:ListItem>
                <asp:ListItem Value="2">International Business Certificate</asp:ListItem>
                <asp:ListItem Value="3">Risk Management & Insurance Certificate</asp:ListItem>
                <asp:ListItem Value="4">Leadership Certificate </asp:ListItem>
                <asp:ListItem Value="5">N/A</asp:ListItem>
                <asp:ListItem Value="6">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Enter Minor(s):</label>
            <asp:TextBox ID="txtMinors" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Select GPA:</label>
            <asp:DropDownList ID="ddlGPA" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select GPA: -</asp:ListItem>
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
<br> <br \ /> 
    <div>
        <label>Select Gender Identity:</label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Gender Identity: -</asp:ListItem>
                <asp:ListItem Value="1">Female</asp:ListItem>
                <asp:ListItem Value="2">Male</asp:ListItem>
                <asp:ListItem Value="3">Transgender</asp:ListItem>
                <asp:ListItem Value="4">Prefer not to say</asp:ListItem>
                <asp:ListItem Value="5">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Race/Ethnicity:</label>
            <asp:DropDownList ID="ddlRace" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Race: -</asp:ListItem>
                <asp:ListItem Value="1">African American/Black</asp:ListItem>
                <asp:ListItem Value="2">Asian American/Asian</asp:ListItem>
                <asp:ListItem Value="3">Hispanic/Latinx</asp:ListItem>
                <asp:ListItem Value="4">Middle Eastern/North African</asp:ListItem>
                <asp:ListItem Value="5">Native American/Alaskan Native</asp:ListItem>
                <asp:ListItem Value="6">Native Hawaiian/Other Pacific Islander</asp:ListItem>
                <asp:ListItem Value="7">White</asp:ListItem>
                <asp:ListItem Value="8">Prefer not to say</asp:ListItem>
                <asp:ListItem Value="9">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select First-Generation:</label>
            <asp:DropDownList ID="ddlFirstGeneration" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Yes or No: -</asp:ListItem>
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
                <asp:ListItem Value="3">Prefer not to say</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Disabilities:</label>
            <asp:DropDownList ID="ddlDisabilities" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Yes or No: -</asp:ListItem>
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
                <asp:ListItem Value="3">Prefer not to say</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>If yes, what type(s) of disabilities do you have?</label>
            <asp:DropDownList ID="ddlTypeDisabilities" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Type of Disbilities: -</asp:ListItem>
                <asp:ListItem Value="1">Acquired/traumatic brain injury</asp:ListItem>
                <asp:ListItem Value="2">Attention deficit/Hyperactivity Disorder</asp:ListItem>
                <asp:ListItem Value="3">Asperger’s/Autism Spectrum </asp:ListItem>
                <asp:ListItem Value="4">Blind/Low vision</asp:ListItem>
                <asp:ListItem Value="5">Deaf/Hard of hearing </asp:ListItem>
                <asp:ListItem Value="6">Cognitive or Learning Disability</asp:ListItem>
                <asp:ListItem Value="7">Chronic Illness/Medical Condition</asp:ListItem>
                <asp:ListItem Value="8">Mental Health/Psychological Condition</asp:ListItem>
                <asp:ListItem Value="9">Physical/Mobility condition</asp:ListItem>
                <asp:ListItem Value="10">Speech/Communication Condition</asp:ListItem>
                <asp:ListItem Value="11">N/A</asp:ListItem>
                <asp:ListItem Value="11">Prefer not to say</asp:ListItem>
                <asp:ListItem Value="12">Option</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Verteran Status:</label>
            <asp:DropDownList ID="ddlVeteran" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Veteran Status: -</asp:ListItem>
                <asp:ListItem Value="1">I am currently serving</asp:ListItem>
                <asp:ListItem Value="2">I am no longer serving</asp:ListItem>
                <asp:ListItem Value="3">I have never served</asp:ListItem>
                <asp:ListItem Value="4">Prefer not to say</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
        <label>Other- Share anything else you would like for us to know about your identity:</label>
        <div>
            <asp:TextBox ID="txtOther" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ /> 
<div>
    <h3>Strengths Assessment:</h3>
</div>
<br> <br \ />
    <div>
        <label>Select Extrovert/Introvert:</label>
            <asp:DropDownList ID="ddlExtrovert" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Extrovert/Introvert: -</asp:ListItem>
                <asp:ListItem Value="1">Strong Extrovert</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Extrovert</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Introvert</asp:ListItem>
                <asp:ListItem Value="5">Strong Introvert</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Emotional/Logical:</label>
            <asp:DropDownList ID="ddlEmotional" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Emotional/Logical: -</asp:ListItem>
                <asp:ListItem Value="1">Very Emotional</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Emotional</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Logical</asp:ListItem>
                <asp:ListItem Value="5">Very Logical</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Leader/Follower:</label>
            <asp:DropDownList ID="ddlLeader" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Leader/Follower: -</asp:ListItem>
                <asp:ListItem Value="1">Strong Leader</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Leader</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Follower</asp:ListItem>
                <asp:ListItem Value="5">Strong Follower</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Detail/Visionary Oriented:</label>
            <asp:DropDownList ID="ddlDetail" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Detail/Visionary Oriented: -</asp:ListItem>
                <asp:ListItem Value="1">Very Detail Oriented</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Detail Oriented</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Visionary Oriented</asp:ListItem>
                <asp:ListItem Value="5">Very Visionary Oriented</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Quiet/Busy Study Area:</label>
            <asp:DropDownList ID="ddlQuiet" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Quiet/Busy Study Area: -</asp:ListItem>
                <asp:ListItem Value="1">Very Quiet Study Area</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Quiet Study Area</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Busy Study Area</asp:ListItem>
                <asp:ListItem Value="5">Very Busy Study Area</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select how your friends describe you:</label>
            <asp:DropDownList ID="ddlFriends" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select how your friends describe you: -</asp:ListItem>
                <asp:ListItem Value="1">Quiet and Shy</asp:ListItem>
                <asp:ListItem Value="2">Friendly and Outgoing</asp:ListItem>
                <asp:ListItem Value="3">Sensitive</asp:ListItem>
                <asp:ListItem Value="4">Inquisitive and Curious</asp:ListItem>
                <asp:ListItem Value="5">Adventerous</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select interest in athletics/sports:</label>
            <asp:DropDownList ID="ddlAthletics" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select interest in athletics/sports: -</asp:ListItem>
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">Somewhat</asp:ListItem>
                <asp:ListItem Value="3">No</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Favorite Games:</label>
            <asp:DropDownList ID="ddlGames" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Favorite Games: -</asp:ListItem>
                <asp:ListItem Value="1">Sports Games</asp:ListItem>
                <asp:ListItem Value="2">Puzzle Games</asp:ListItem>
                <asp:ListItem Value="3">Board Games</asp:ListItem>
                <asp:ListItem Value="4">Video Games</asp:ListItem>
                <asp:ListItem Value="5">N/A</asp:ListItem>
                <asp:ListItem Value="6">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Favorite Music Genre:</label>
            <asp:DropDownList ID="ddlMusic" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Favorite Music Genre: -</asp:ListItem>
                <asp:ListItem Value="1">Classical</asp:ListItem>
                <asp:ListItem Value="2">Rock</asp:ListItem>
                <asp:ListItem Value="3">Pop</asp:ListItem>
                <asp:ListItem Value="4">Rap/Hip-Hop</asp:ListItem>
                <asp:ListItem Value="5">R&B</asp:ListItem>
                <asp:ListItem Value="6">Country</asp:ListItem>
                <asp:ListItem Value="7">Latin</asp:ListItem>
                <asp:ListItem Value="8">Jazz</asp:ListItem>
                <asp:ListItem Value="9">Electronic</asp:ListItem>
                <asp:ListItem Value="10">Metal</asp:ListItem>
                <asp:ListItem Value="11">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select the activity you would enjoy participating in the most with your mentor/mentee:</label>
            <asp:DropDownList ID="ddlActivity" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select the activity you would enjoy participating in the most with your mentor/mentee: -</asp:ListItem>
                <asp:ListItem Value="1">Play sports/Attend sporting event</asp:ListItem>
                <asp:ListItem Value="2">Study together</asp:ListItem>
                <asp:ListItem Value="3">Grab some food</asp:ListItem>
                <asp:ListItem Value="4">Volunteer together</asp:ListItem>
                <asp:ListItem Value="5">Attend Tippie Tech events</asp:ListItem>
                <asp:ListItem Value="6">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Favorite Type of Food:</label>
            <asp:DropDownList ID="ddlFood" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Favorite Type of Food: -</asp:ListItem>
                <asp:ListItem Value="1">American</asp:ListItem>
                <asp:ListItem Value="2">Chinese</asp:ListItem>
                <asp:ListItem Value="3">Mexican</asp:ListItem>
                <asp:ListItem Value="4">Italian</asp:ListItem>
                <asp:ListItem Value="5">Caribbean</asp:ListItem>
                <asp:ListItem Value="6">Greek</asp:ListItem>
                <asp:ListItem Value="7">Indian</asp:ListItem>
                <asp:ListItem Value="8">Other</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select how much time you can invest in the mentorship program:</label>
            <asp:DropDownList ID="ddlTime" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select how much time you can invest in the mentorship program: -</asp:ListItem>
                <asp:ListItem Value="1">1-5 hours per week</asp:ListItem>
                <asp:ListItem Value="2">1-5 hours biweekly</asp:ListItem>
                <asp:ListItem Value="3">1-5 hours per month</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select caution with covid:</label>
            <asp:DropDownList ID="ddlCovid" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select caution with covid: -</asp:ListItem>
                <asp:ListItem Value="1">Very Cautious</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Cautious</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Carefree</asp:ListItem>
                <asp:ListItem Value="5">Very Carefree</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select which academic opportunities outside of class interests you the most: </label>
            <asp:DropDownList ID="ddlOpportunity" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select what academic opportunities outside of class interests you the most: -</asp:ListItem>
                <asp:ListItem Value="1">Research Opportunities</asp:ListItem>
                <asp:ListItem Value="2">Study Abroad</asp:ListItem>
                <asp:ListItem Value="3">Internship</asp:ListItem>
                <asp:ListItem Value="4">Volunteer Work</asp:ListItem>
                <asp:ListItem Value="5">Fellowships</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select how many hours you study each week: </label>
            <asp:DropDownList ID="ddlHours" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select how many hours you study each week: -</asp:ListItem>
                <asp:ListItem Value="1">1-5 hours per week</asp:ListItem>
                <asp:ListItem Value="2">5-10 hours per week</asp:ListItem>
                <asp:ListItem Value="3">10-15 hours per week</asp:ListItem>
                <asp:ListItem Value="4">15-20 hours per week</asp:ListItem>
                <asp:ListItem Value="5">20+ hours per week</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Study/Social: </label>
            <asp:DropDownList ID="ddlStudy" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Study/Social: -</asp:ListItem>
                <asp:ListItem Value="1">Very School Driven</asp:ListItem>
                <asp:ListItem Value="2">Somewhat School Driven</asp:ListItem>
                <asp:ListItem Value="3">Neutral</asp:ListItem>
                <asp:ListItem Value="4">Somewhat Social Driven</asp:ListItem>
                <asp:ListItem Value="5">Very Social Driven</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>Select Study Time: </label>
            <asp:DropDownList ID="ddlStudyTime" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Study Time: -</asp:ListItem>
                <asp:ListItem Value="1">Morning</asp:ListItem>
                <asp:ListItem Value="2">Afternoon</asp:ListItem>
                <asp:ListItem Value="3">Night</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
<div>
    <h3>Professional Assessment:</h3>
</div>
<br> <br \ />
    <div>
        <label>Have you had an internship experience? </label>
            <asp:DropDownList ID="ddlInternship" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select Yes or No -</asp:ListItem>
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>If yes, where did you intern and what was your job title?</label>
            <asp:TextBox ID="txtWhere" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ /> 
    <div>
        <label>What is your dream job?</label>
            <asp:TextBox ID="txtDream" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ /> 
    <div>
        <label>What kind of company would you most like to work for?</label>
            <asp:DropDownList ID="ddlCompany" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select kind of company: -</asp:ListItem>
                <asp:ListItem Value="1">Large Company</asp:ListItem>
                <asp:ListItem Value="2">Small Company/Business</asp:ListItem>
                <asp:ListItem Value="3">Family Practice/Entrepreneurship</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
    <div>
        <label>What industry is most interesting to you?</label>
            <asp:DropDownList ID="ddlIndustry" runat="server" CssClass="txtbox" Height="34px" Width="400px">
                <asp:ListItem Selected="True" Value="0">- Select the Industry: -</asp:ListItem>
                <asp:ListItem Value="1">Education</asp:ListItem>
                <asp:ListItem Value="2">Health Care</asp:ListItem>
                <asp:ListItem Value="3">Retail</asp:ListItem>
                <asp:ListItem Value="4">Business to Business</asp:ListItem>
                <asp:ListItem Value="5">Hospitality</asp:ListItem>
                <asp:ListItem Value="6">Financial Services</asp:ListItem>
                <asp:ListItem Value="7">Human Resources</asp:ListItem>
                <asp:ListItem Value="8">Sports Management</asp:ListItem>
                <asp:ListItem Value="9">Technology</asp:ListItem>
            </asp:DropDownList>
    </div>
<br> <br \ />
<div>
    <h3>Additional Information:</h3>
</div>
<br> <br \ />
    <div>
        <label>What are your hobbies/interests?</label>
            <asp:TextBox ID="txtHobby" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Why did you join Tippie Tech?</label>
            <asp:TextBox ID="txtWhy" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>What would you like to get out of the Tippie Tech mentorship program?</label>
            <asp:TextBox ID="txtProgram" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>Why did you choose your major?</label>
            <asp:TextBox ID="txtChoose" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>What other student organizations are you involved in?</label>
            <asp:TextBox ID="txtOrgs" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <label>What can Tippie Tech do to ensure your personal success?</label>
            <asp:TextBox ID="txtSuccess" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
        </div>
<br> <br \ />
    <div>
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="Btn"  OnClick="BtnSubmit_Click" Width="125px"/>
        </div>
        <asp:label ID="lblSubmit" runat="server"> </asp:label>
    </div>

    </fieldset>

    <script>
        var x, i, j, l, ll, selElmnt, a, b, c;
        /*look for any elements with the class "custom-select":*/
        x = document.getElementsByClassName("custom-select");
        l = x.length;
        for (i = 0; i < l; i++) {
            selElmnt = x[i].getElementsByTagName("select")[0];
            ll = selElmnt.length;
            /*for each element, create a new DIV that will act as the selected item:*/
            a = document.createElement("DIV");
            a.setAttribute("class", "select-selected");
            a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
            x[i].appendChild(a);
            /*for each element, create a new DIV that will contain the option list:*/
            b = document.createElement("DIV");
            b.setAttribute("class", "select-items select-hide");
            for (j = 1; j < ll; j++) {
                /*for each option in the original select element,
                create a new DIV that will act as an option item:*/
                c = document.createElement("DIV");
                c.innerHTML = selElmnt.options[j].innerHTML;
                c.addEventListener("click", function (e) {
                    /*when an item is clicked, update the original select box,
                    and the selected item:*/
                    var y, i, k, s, h, sl, yl;
                    s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                    sl = s.length;
                    h = this.parentNode.previousSibling;
                    for (i = 0; i < sl; i++) {
                        if (s.options[i].innerHTML == this.innerHTML) {
                            s.selectedIndex = i;
                            h.innerHTML = this.innerHTML;
                            y = this.parentNode.getElementsByClassName("same-as-selected");
                            yl = y.length;
                            for (k = 0; k < yl; k++) {
                                y[k].removeAttribute("class");
                            }
                            this.setAttribute("class", "same-as-selected");
                            break;
                        }
                    }
                    h.click();
                });
                b.appendChild(c);
            }
            x[i].appendChild(b);
            a.addEventListener("click", function (e) {
                /*when the select box is clicked, close any other select boxes,
                and open/close the current select box:*/
                e.stopPropagation();
                closeAllSelect(this);
                this.nextSibling.classList.toggle("select-hide");
                this.classList.toggle("select-arrow-active");
            });
        }
        function closeAllSelect(elmnt) {
            /*a function that will close all select boxes in the document,
            except the current select box:*/
            var x, y, i, xl, yl, arrNo = [];
            x = document.getElementsByClassName("select-items");
            y = document.getElementsByClassName("select-selected");
            xl = x.length;
            yl = y.length;
            for (i = 0; i < yl; i++) {
                if (elmnt == y[i]) {
                    arrNo.push(i)
                } else {
                    y[i].classList.remove("select-arrow-active");
                }
            }
            for (i = 0; i < xl; i++) {
                if (arrNo.indexOf(i)) {
                    x[i].classList.add("select-hide");
                }
            }
        }
        /*if the user clicks anywhere outside the select box,
        then close all select boxes:*/
        document.addEventListener("click", closeAllSelect);
    </script>

</asp:Content>