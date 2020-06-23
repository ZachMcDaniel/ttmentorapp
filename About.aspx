<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MentorAppFinal.About" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            background-color: white;
            text-align: center;
            color: black;
            font-family: Arial, Helvetica, sans-serif
        }
    </style>
 
        <h1>About Us</h1>
        <p>Tippie Technology and Innovation Association (Tippie Tech) facilitates the growth and awareness of information technology. All students with an interest in technology will benefit from attending Tippie Tech's networking events, hands-on learning experiences, and professional development opportunities.</p>
        <p>Tippie Tech pairs new members with mentors to create community within our organization. We foster personal and professional growth through team building exercises, case competitions, and experiential learning opportunities. This application contains all the tools you need to succeed in the Tippie Tech mentorship program.</p>
        <img src="https://www.freelogodesign.org/file/app/client/thumb/e679a054-a9e6-4bcb-9577-1980b34c11b8_200x200.png?1592498024850" style="width:60%" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [sysdiagrams]"></asp:SqlDataSource>
    
        <h2>Meet the Executive Board!</h2>
        <h4>President - Brody Adreon</h4> 
        <img src="https://www.biz.uiowa.edu/tippietech/wp-content/uploads/sites/19/2020/06/IMG_339314-300x200.jpg" style="width:200px" />
        <p>Email: brody-adreon@uiowa.edu</p>
        <p>Business Analytics and Finance Major. I am thrilled and eager to serve as the president for Tippie Tech this school year! This will be my third year in the organization and my second year on the executive board. Outside of Tippie Tech, I also serve as the Director of Operations for Tippie’s stock investment club, HawkTrade, and work in the Tippie Analytics Department. My passion for assisting others is reflected in the new professional growth opportunities the executive board and I have developed for this school year. I am looking forward to working with everyone this year and hope that Tippie Tech serves you as well as it has served me. </p>
  
        <h4>Executive Administrator - Jess Buman</h4>
        <img src="https://www.biz.uiowa.edu/tippietech/wp-content/uploads/sites/19/2020/05/headshot-FINAL-207x300.jpg" style="width:200px" />
        <p>Email: jessica-buman@uiowa.edu</p>
        <p>Business Analytics and Information Systems major, with a International Business Certificate. I have been a member and held leadership positions within Tippie Tech for the last three years. Last semester, I was an Infrastructure Consulting Intern for RSM. This summer, I plan on working with EY as a Risk Advisory Intern. </p>

        <h4>Vice President - Clint Krapfl</h4>
        <img src="https://www.biz.uiowa.edu/tippietech/wp-content/uploads/sites/19/2020/05/unnamed-e1590010833634-263x300.png" style="width:200px" />
        <p>Email: clintkrapfl@uiowa.edu</p>
        <p>Hi everyone, my name is Clint Krapfl and I am a Business Analytics major planning to graduate in May of 2021. I enjoy meeting as many people as possible and I can't wait to grow with everyone in my last year of college. I am currently working as a Data Analyst intern for Centene - Iowa Total Care. I help the medicare team in creating effective solutions for public health and I love making a difference in this field. Feel free to reach out to me with any problem you may be having as I am always willing to help or talk! </p>


</asp:Content>




