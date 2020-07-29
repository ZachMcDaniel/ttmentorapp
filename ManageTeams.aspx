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
    <div class="row">
    <asp:GridView ID="GridView1" DataKeyNames="Name" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="80%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="center" HeaderStyle-CssClass="centerHeaderText">
        <Columns>
            
            <asp:BoundField DataField="TeamNumber" HeaderText="Team Number" SortExpression="TeamNumber"/>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True"/>
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" ReadOnly="True"/>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" ReadOnly="True"/>
            <asp:BoundField DataField="Majors" HeaderText="Majors" SortExpression="Majors" ReadOnly="True"/>
            <asp:CommandField EditText="Edit Team" ShowEditButton="True" SortExpression="TeamNumber"/>
            <asp:CommandField ShowHeader="False" SelectText="More Info" ShowSelectButton ="true" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="30px" />
        <PagerStyle BackColor="White" ForeColor="#000066" />
        <RowStyle ForeColor="#000000" Height="30px" HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#8fa7bf" Font-Bold="True" ForeColor="000000" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Name, CASE WHEN Position = 1 THEN 'Mentor' ELSE 'Mentee' END AS Position, CASE WHEN Year = 1 THEN 'Freshman' WHEN Year = 2 THEN 'Sophomore' WHEN Year = 3 THEN 'Junior' WHEN Year = 4 THEN 'Senior' ELSE 'Other' End As Year, Phone, Email, Pronouns, CASE WHEN Majors = 1 THEN 'Pre-Business' WHEN Majors = 2 THEN 'BAIS' WHEN Majors = 3 THEN 'Finance' WHEN Majors = 4 THEN 'Accounting' WHEN Majors = 5 THEN 'Economics' WHEN Majors = 6 THEN 'Management' WHEN Majors = 7 THEN 'Marketing' WHEN Majors = 8 THEN 'Computer Science' ELSE 'Other' END AS Majors, TeamNumber from Members" 
            UpdateCommand="UPDATE [Members] SET [TeamNumber] = @TeamNumber WHERE [Name] = @original_Name"
            OldValuesParameterFormatString="original_{0}">
            <UpdateParameters>
            <asp:Parameter Name="TeamNumber" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>

    </div>
    <br />
  
    <div class="row">
  
    
    <asp:DetailsView ID="DetailsView1" runat="server" Width="334px" AutoGenerateRows="False" DataKeyNames="Name" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="center" HeaderStyle-CssClass="centerHeaderText">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Hometown" HeaderText="Hometown" SortExpression="Hometown" />
            <asp:BoundField DataField="Pronouns" HeaderText="Pronouns" SortExpression="Pronouns" />
            <asp:BoundField DataField="Transportation" HeaderText="Transportation" SortExpression="Transportation" />
            
            <asp:BoundField DataField="Certificates" HeaderText="Certificates" SortExpression="Certificates" />
            <asp:BoundField DataField="Minors" HeaderText="Minors" SortExpression="Minors" />
            <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
            <asp:BoundField DataField="FirstGeneration" HeaderText="FirstGeneration" SortExpression="FirstGeneration" />
            <asp:BoundField DataField="Disabilities" HeaderText="Disabilities" SortExpression="Disabilities" />
            <asp:BoundField DataField="TypeDisabilities" HeaderText="TypeDisabilities" SortExpression="TypeDisabilities" />
            <asp:BoundField DataField="Veteran" HeaderText="Veteran" SortExpression="Veteran" />
            <asp:BoundField DataField="Other" HeaderText="Other" SortExpression="Other" />
            <asp:BoundField DataField="Extrovert" HeaderText="Extrovert" SortExpression="Extrovert" />
            <asp:BoundField DataField="Emotional" HeaderText="Emotional" SortExpression="Emotional" />
            <asp:BoundField DataField="Leader" HeaderText="Leader" SortExpression="Leader" />
            <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
            <asp:BoundField DataField="Quiet" HeaderText="Quiet" SortExpression="Quiet" />
            <asp:BoundField DataField="Friends" HeaderText="Friends" SortExpression="Friends" />
            <asp:BoundField DataField="Athletics" HeaderText="Athletics" SortExpression="Athletics" />
            <asp:BoundField DataField="Games" HeaderText="Games" SortExpression="Games" />
            <asp:BoundField DataField="Music" HeaderText="Music" SortExpression="Music" />
            <asp:BoundField DataField="Activity" HeaderText="Activity" SortExpression="Activity" />
            <asp:BoundField DataField="Food" HeaderText="Food" SortExpression="Food" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Covid" HeaderText="Covid" SortExpression="Covid" />
            <asp:BoundField DataField="Opportunity" HeaderText="Opportunity" SortExpression="Opportunity" />
            <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" />
            <asp:BoundField DataField="Study" HeaderText="Study" SortExpression="Study" />
            <asp:BoundField DataField="StudyTime" HeaderText="StudyTime" SortExpression="StudyTime" />
            <asp:BoundField DataField="Internship" HeaderText="Internship" SortExpression="Internship" />
            <asp:BoundField DataField="Where" HeaderText="Where" SortExpression="Where" />
            <asp:BoundField DataField="Dream" HeaderText="Dream" SortExpression="Dream" />
            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
            <asp:BoundField DataField="Industry" HeaderText="Industry" SortExpression="Industry" />
            <asp:BoundField DataField="Hobby" HeaderText="Hobby" SortExpression="Hobby" />
            <asp:BoundField DataField="Why" HeaderText="Why" SortExpression="Why" />
            <asp:BoundField DataField="Program" HeaderText="Program" SortExpression="Program" />
            <asp:BoundField DataField="Choose" HeaderText="Choose" SortExpression="Choose" />
            <asp:BoundField DataField="Orgs" HeaderText="Orgs" SortExpression="Orgs" />
            <asp:BoundField DataField="Success" HeaderText="Success" SortExpression="Success" />
           
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="30px" />
        <PagerStyle BackColor="White" ForeColor="#000066" />
        <RowStyle ForeColor="#000000" Height="30px" HorizontalAlign="Center"/>
        
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Name, Email, Phone, Hometown, Pronouns, CASE WHEN Transportation = 1 THEN 'Yes' ELSE 'No' END AS Transportation, CASE WHEN Certificates = 1 THEN 'Entrepeunerial Management' WHEN Certificates = 2 THEN 'International Business' WHEN Certificates = 3 THEN 'Risk and Insurance' WHEN Certificates = 4 THEN 'Leadership' ELSE 'Other' END AS Certificates, Minors, CASE WHEN GPA=1 THEN '1-1.5' WHEN GPA = 2 Then '1.5-2' WHEN GPA = 3 THEN '2-2.5' WHEN GPA = 4 THEN '2.5-3' WHEN GPA = 5 THEN '3-3.5' WHEN GPA = 6 THEN '3.5-4' ELSE 'Other' END AS GPA, CASE WHEN Gender = 1 THEN 'Female' WHEN Gender = 2 THEN 'Male' WHEN Gender = 3 then 'Prefer not to Say' ELSE 'Other' End AS Gender, 
        CASE WHEN Race = 1 THEN 'African American/Black' WHEN Race = 2 THEN 'Asian American/Asian' WHEN Race = 3 THEN 'Hispanic/LatinX' WHEN Race = 4 THEN 'Middle Eastern/North African' WHEN Race = 5 THEN 'Native American/Alaskan American' WHEN Race = 6 THEN 'Native Hawaiian/Other Pacific Islander' WHEN Race = 7 Then 'White' Else 'Other' End as Race, CASE WHEN FirstGeneration = 1 THEN 'Yes' Else 'No' END AS FirstGeneration, 
        CASE WHEN Disabilities = 1 THEN 'Yes' When Disabilities = 2 Then 'No' Else 'Other' END AS Disabilities, 
        CASE WHEN TypeDisabilities = 1 THEN 'Brain Injury' WHEN TypeDisabilities = 2 THEN 'ADHD' When TypeDisabilities = 3 THEN 'Asbergers/Autism Spectrum' WHEN TypeDisabilities = 4 Then 'Blind/Low Vision' WHEN TypeDisabilities = 5 THEN 'Deaf/Hard of Hearing' WHEN TypeDisabilities = 6 THEN 'Cognitive or Learning Disability' WHEN TypeDisabilities = 7 THEN 'Chronic Illness/Medical Condition' When TypeDisabilities = 8 THEN 'Mental Health/Pyschological Disorder' WHEN TypeDisabilities = 9 Then 'Physical/Mobility Condition' WHEN TypeDisabilities = 10 THEN 'Speech/Communication Condition' WHEN TypeDisabilities = 11 THEN 'N/A' ELSE 'Other' End AS TypeDisabilities,
        CASE WHEN Veteran = 1 THEN 'Currently Serving' WHEN Veteran = 2 THEN 'No Longer Serving' WHEN Veteran = 3 THEN 'No' ELSE 'Other' END AS Veteran, 
        Other, 
        CASE WHEN Extrovert = 1 THEN 'Strong Extrovert' WHEN Extrovert = 2 THEN 'Somewhat Extrovert' WHEN Extrovert = 3 THEN 'Neutral' WHEN Extrovert = 4 THEN 'Somewhat Introvert' WHEN Extrovert = 5 THEN 'Strong Introvert' ELSE 'Other' END AS Extrovert, 
        CASE WHEN Emotional = 1 THEN 'Very Emotional' WHEN Emotional = 2 THEN 'Somewhat Emotional' WHEN Emotional = 3 THEN 'Neutral' WHEN Emotional = 4 THEN 'Somewhat Logical' WHEN Emotional = 5 THEN 'Very Logical' ELSE 'Other' END AS Emotional, 
        CASE WHEN Leader = 1 THEN 'Strong Leader' WHEN Leader = 2 THEN 'Somewhat Leader' WHEN Leader = 3 THEN 'Neutral' WHEN Leader = 4 THEN 'Somewhat Follower' WHEN Leader = 5 THEN 'Strong Follower' ELSE 'Other' END AS Leader, 
        CASE WHEN Detail = 1 THEN 'Very Detail Oriented' WHEN Detail = 2 THEN 'Somewhat Detail Oriented' WHEN Detail = 3 THEN 'Neutral' WHEN Detail = 4 THEN 'Somewhat Visionary Oriented' WHEN Detail = 5 THEN 'Very Visionary Oriented' ELSE 'Other' END AS Detail, 
        CASE WHEN Quiet = 1 THEN 'Very Quiet Study Area' WHEN Quiet = 2 THEN 'Somewhat Quiet Study Area' WHEN Quiet = 3 THEN 'Neutral' WHEN Quiet = 4 THEN 'Somewhat Busy Study Area' WHEN Quiet = 5 THEN 'Very Busy Study Area' ELSE 'Other' END AS Quiet, 
        CASE WHEN Friends = 1 THEN 'Quiet And Shy' WHEN Friends = 2 THEN 'Friendly And Outgoing' WHEN Friends = 3 THEN 'Sensitive' WHEN Friends = 4 THEN 'Inquisitive and Curious' WHEN Friends = 5 THEN 'Advernterous' ELSE 'Other' END AS Friends, 
        CASE WHEN Athletics = 1 THEN 'Yes' WHEN Athletics = 2 THEN 'Somewhat' WHEN Athletics = 3 THEN 'No' Else 'Other' END AS Athletics, 
        CASE WHEN Games = 1 THEN 'Sports' WHEN Games = 2 THEN 'Puzzle' WHEN Games = 3 THEN 'Board Games' WHEN Games = 4 THEN 'Video Games' WHEN Games = 5 THEN 'N/A' ELSE 'Other' END AS Games, 
        CASE WHEN Music = 1 THEN 'Classical' WHEN Music = 2 THEN 'Rock' WHEN Music = 3 THEN 'Pop' WHEN Music = 4 THEN 'Hip-Hop/Rap' WHEN Music = 5 THEN 'R&B' WHEN Music = 6 THEN 'Country' WHEN Music = 7 THEN 'Latin' WHEN Music = 8 THEN 'Jazz' WHEN Music = 9 THEN 'Electronic' WHEN Music = 10 THEN 'Metal' ELSE 'Other' END AS Music, 
        CASE WHEN Activity = 1 THEN 'Sports' WHEN Activity = 2 THEN 'Study' WHEN Activity = 3 THEN 'Food' WHEN Activity = 4 THEN 'Volunteer' WHEN Activity = 5 THEN 'Tippie Tech' ELSE 'Other' END AS Activity,
        CASE WHEN Food = 1 THEN 'American' WHEN Food = 2 THEN 'Chinese' WHEN Food = 3 THEN 'Mexican' WHEN Food = 4 THEN 'Italian' WHEN Food = 5 THEN 'Carribean' WHEN Food = 6 THEN 'Greek' WHEN Food = 7 THEN 'Indian' ELSE 'Other' End AS Food, 
        CASE WHEN Time = 1 THEN '1-5 Hours/Week' WHEN Time = 2 THEN '1-5 Hours Biweekly' When Time = 3 Then '1-5 Hours/Month' ELSE 'Other' END AS Time, 
        CASE WHEN Covid = 1 THEN 'Very Cautious' WHEN Covid = 2 THEN 'Somewhat Cautious' WHEN Covid = 3 THEN 'Neutral' WHEN Covid = 4 THEN 'Somewhat Carefree' WHEN Covid = 5 THEN 'Very Carefree' ELSE 'Other' END AS Covid, 
        CASE WHEN Opportunity = 1 THEN 'Research' WHEN Opportunity = 2 THEN 'Study' WHEN Opportunity = 3 THEN 'Internship' WHEN Opportunity = 4 THEN 'Volunteer' WHEN Opportunity = 5 THEN 'Fellowship' ELSE 'Other' END AS Opportunity,
        CASE WHEN Hours = 1 THEN '1-5' WHEN Hours = 2 THEN '5-10' WHEN Hours = 3 THEN '10-15' WHEN Hours = 4 THEN '15-20' WHEN Hours = 5 THEN '20+' ELSE 'Other' END AS Hours,
        CASE WHEN Study = 1 THEN 'Very School Driven' WHEN Study = 2 THEN 'Somewhat School Driven' WHEN Study = 3 THEN 'Neutral' WHEN Study = 4 THEN 'Somewhat Social Driven' WHEN Study = 5 THEN 'Very Social Driven' ELSE 'Other' END AS Study,
        CASE WHEN StudyTime = 1 THEN 'Morning' WHEN StudyTime = 2 THEN 'Afternoon' When StudyTime = 3 Then 'Night' ELSE 'Other' END AS StudyTime,  
        CASE WHEN Internship = 1 THEN 'Yes' WHEN Internship = 2 THEN 'No' Else 'Other' End AS Internship,
        [Where], Dream, 
        CASE WHEN Company = 1 THEN 'Large' WHEN Company = 2 THEN 'Small' When Company = 3 Then 'Family Practice/Entrepeneurship' ELSE 'Other' END AS Company, 
        CASE WHEN Industry = 1 THEN 'Education' WHEN Industry = 2 THEN 'Healthcare' When Industry = 3 Then 'Retail' WHEN Industry = 4 THEN 'Business to Business' WHEN Industry = 5 THEN 'Hospitality' When Industry = 6 Then 'Financial Services' WHEN Industry = 7 THEN 'HR' WHEN Industry = 8 THEN 'Sports Management' When Industry = 9 Then 'Technology' ELSE 'Other' END AS Industry, 
        Hobby, Why, Program, Choose, Orgs, Success FROM [Members] WHERE ([Name]=@Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Name" PropertyName="SelectedValue" />
            </SelectParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
