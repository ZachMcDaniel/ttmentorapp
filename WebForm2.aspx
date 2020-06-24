<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MentorAppFinal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /*the container must be positioned relative:*/
        .custom-select {
            position: relative;
            font-family: "Poppins", sans-serif;
        }

            .custom-select select {
                display: none; /*hide original SELECT element:*/
            }

        .select-selected {
            background-color: #8fa7bf;
        }

            /*style the arrow inside the select element:*/
            .select-selected:after {
                position: absolute;
                content: "";
                top: 10px;
                right: 10px;
                width: 0;
                height: 0;
                border: 6px solid transparent;
                border-color: #fff transparent transparent transparent;
            }

            /*point the arrow upwards when the select box is open (active):*/
            .select-selected.select-arrow-active:after {
                border-color: transparent transparent #fff transparent;
                top: 7px;
            }

        /*style the items (options), including the selected item:*/
        .select-items div, .select-selected {
            color: #ffff;
            padding: 1px 16px;
            border: 1px solid transparent;
            border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
            cursor: pointer;
            user-select: none;
        }

        /*style items (options):*/
        .select-items {
            position: absolute;
            background-color: #8fa7bf;
            top: 100%;
            left: 0;
            right: 0;
            z-index: 99;
        }

        /*hide the items when the select box is closed:*/
        .select-hide {
            display: none;
        }

        .select-items div:hover, .same-as-selected {
            background-color: rgba(0, 0, 0, 0.1);
        }

        .poppins {
            font-family: "Poppins", sans-serif;
        }
    </style>
</head>
<body>

    <div class="jumbotron">
        <h1>Create Profile</h1>
        </div>
    <h4>Position:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Position:</option>
            <option value="1">Mentor</option>
            <option value="2">Mentee</option>
        </select>
    </div>
    <h4>Contact Information:</h4>
    <p>Name:</p>
    <asp:TextBox ID="TextBox1" runat="server" Width="1000px"></asp:TextBox>
    <p>HawkID:</p>
    <asp:TextBox ID="TextBox2" runat="server" Width="1000px"></asp:TextBox>
    <p>University Email:</p>
    <asp:TextBox ID="TextBox3" runat="server" Width="1000px"></asp:TextBox>
    <p>Phone Number:</p>
    <asp:TextBox ID="TextBox4" runat="server" Width="1000px"></asp:TextBox>
    <p>Hometown:</p>
    <asp:TextBox ID="TextBox5" runat="server" Width="1000px"></asp:TextBox>
    <p>Pronouns:</p>
    <asp:TextBox ID="TextBox6" runat="server" Width="1000px"></asp:TextBox>
    <p>Do you have a car on campus?</p>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Yes or No:</option>
            <option value="1">Yes</option>
            <option value="2">No</option>
        </select>
    </div>
    <h4>Educational Information:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Year in School:</option>
            <option value="1">First Year</option>
            <option value="2">Second Year</option>
            <option value="3">Third Year</option>
            <option value="4">Forth Year</option>
            <option value="5">Fifth Year</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Major:</option>
            <option value="1">Business Analytics and Information Systems</option>
            <option value="2">Finance</option>
            <option value="3">Accounting</option>
            <option value="4">Economics</option>
            <option value="5">Management</option>
            <option value="6">Marketing</option>
            <option value="7">Computer Science</option>
            <option value="8">Pre-Business</option>
            <option value="9">Other</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Certificate:</option>
            <option value="1">International Business</option>
            <option value="2">Entrepreneurial Management</option>
            <option value="3">Risk Management and Insurance</option>
            <option value="4">Leadership</option>
            <option value="5">Other</option>
        </select>
    </div>
        <br> </br>
    <p>Enter Minor(s):</p>
    <asp:TextBox ID="TextBox11" runat="server" Width="1000px"></asp:TextBox>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select GPA:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
            <option value="7">Other</option>
        </select>
    </div>
    <h4>Demographic Information:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Gender Identity:</option>
            <option value="1">Female</option>
            <option value="2">Male</option>
            <option value="3">Transgender</option>
            <option value="5">Non-Conforming</option>
            <option value="6">Prefer not to say</option>
            <option value="7">Other</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Race:</option>
            <option value="1">African America/Black</option>
            <option value="2">Asian American/Asian</option>
            <option value="3">Hispanic/Latino</option>
            <option value="4">Middle Eastern/North African</option>
            <option value="5">Native American/Alaskan Native</option>
            <option value="6">Native Hawaiian/Other Pacific Islander</option>
            <option value="7">White</option>
            <option value="8">Prefer not to say</option>
            <option value="9">Other</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px; top: 0px; left: 0px;">
        <select>
            <option value="0">Select Country of Birth:</option>
            <option value="1">Audi</option>
            <option value="2">BMW</option>
            <option value="3">Citroen</option>
            <option value="4">Ford</option>
            <option value="5">Honda</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select First-Generation:</option>
            <option value="1">Yes</option>
            <option value="2">No</option>
            <option value="2">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Disabilities:</option>
            <option value="1">Yes</option>
            <option value="2">No</option>
            <option value="3">Prefer not to say</option>
        </select>
    </div>
    <div class="custom-select" style="width:400px;">
        <p>If yes,</p>
        <select>
            <option value="0">Select Type of Disabilities:</option>
            <option value="1">Acquired/traumatic brain injury</option>
            <option value="2">Attention deficit/Hyperactivity Disorder</option>
            <option value="3">Asperger’s/Autism Spectrum</option>
            <option value="4">Blind/Low vision</option>
            <option value="5">Deaf/Hard of hearing</option>
            <option value="6">Cognitive or Learning Disability </option>
            <option value="4">Chronic Illness/Medical Condition</option>
            <option value="4">Mental Health/Psychological Condition</option>
            <option value="4">Physical/Mobility condition</option>
            <option value="4">Speech/Communication Condition</option>
            <option value="4">N/A</option>
            <option value="4">Prefer not to say</option>
            <option value="4">Other</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Veteran Status:</option>
            <option value="1">I am currently serving</option>
            <option value="2">I am no longer serving</option>
            <option value="3">I have never served</option>
            <option value="4">I prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <p>Other- Share anything else you would like for us to know about your identity:</p>
    <asp:TextBox ID="TextBox12" runat="server" Width="1000px"></asp:TextBox>
    <h4>Strengths Assessment:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Introvert/Extrovert:</option>
            <option value="1">Strong Introvert</option>
            <option value="2">Somewhat Introvert</option>
            <option value="3">Neutral</option>
            <option value="4">Somewhat Extrovert</option>
            <option value="5">Strong Extrovert</option>
            <option value="6">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Emotional/Logical:</option>
            <option value="1">Very Emotional</option>
            <option value="2">Somewhat Emotional</option>
            <option value="3">Neutral</option>
            <option value="4">Somewhat Logical</option>
            <option value="5">Very Logical</option>
            <option value="6">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Leader/Follower:</option>
            <option value="1">Strong Leader</option>
            <option value="2">Somewhat Leader</option>
            <option value="3">Neutral</option>
            <option value="4">Somewhat Follower</option>
            <option value="5">Strong Follower</option>
            <option value="6">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Detail/Visionary Oriented:</option>
            <option value="1">Very Detail Oriented</option>
            <option value="2">Somewhat Detail Oriented</option>
            <option value="3">Neutral</option>
            <option value="4">Somewhat Visionary Oriented</option>
            <option value="5">Very Visionary Oriented</option>
            <option value="6">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Quiet/Busy Study Area:</option>
            <option value="1">Very Quiet Study Area</option>
            <option value="2">Somewhat Quiet Study Area</option>
            <option value="3">Neutral</option>
            <option value="4">Somewhat Busy Study Area</option>
            <option value="5">Very Busy Study Area</option>
            <option value="6">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select how your friends describe you:</option>
            <option value="1">Quiet and Shy</option>
            <option value="2">Friendly and Outgoing</option>
            <option value="3">Sensitive</option>
            <option value="4">Inquisitive and Curious</option>
            <option value="5">Adventurous</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Athletics/Sports:</option>
            <option value="1">Yes</option>
            <option value="2">Somewhat</option>
            <option value="3">No</option>
            <option value="4">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Favorite Games:</option>
            <option value="1">Sports Games</option>
            <option value="2">Puzzle Games</option>
            <option value="3">Board Games</option>
            <option value="4">Video Games</option>
            <option value="5">N/A</option>
            <option value="6">Other</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Favorite Music Genre:</option>
            <option value="1">Classical</option>
            <option value="2">Rock</option>
            <option value="3">Pop</option>
            <option value="4">Rap/Hip-Hop</option>
            <option value="5">R&B</option>
            <option value="6">Country</option>
            <option value="7">Latin</option>
            <option value="8">Jazz</option>
            <option value="9">Eletronic</option>
            <option value="10">Metal</option>
            <option value="11">Prefer not to say</option>
            <option value="12">Other</option>
        </select>
    </div>
        <br> </br>
     <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select the activity you would enjoy participating in the most with your mentor/mentee:</option>
            <option value="1">Sports</option>
            <option value="2">Study together</option>
            <option value="3">Grab some food</option>
            <option value="3">Volunteer together</option>
            <option value="3">Attend Tippie Tech events</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Favorite Type of Food:</option>
            <option value="1">American</option>
            <option value="2">Chinese</option>
            <option value="3">Mexican</option>
            <option value="4">Italian</option>
            <option value="5">Caribeean</option>
            <option value="6">Greek</option>
            <option value="7">Idian</option>
            <option value="8">Prefer not to say</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select how much time you can invest in the mentorship program:</option>
            <option value="1">1-5 hours per week</option>
            <option value="2">1-5 hours biweekly</option>
            <option value="3">1-5 hours per month</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select what academic opportunity outside of class interests you the most:</option>
            <option value="1">Research Opportunity</option>
            <option value="2">Study Abroad</option>
            <option value="3">Internship</option>
            <option value="4">Volunteer Work</option>
            <option value="5">Fellowship</option>
            <option value="6">Network</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select how many hours you study each week:</option>
            <option value="1">1-5 hours per week</option>
            <option value="2">5-10 hours per week</option>
            <option value="3">10-15 hours per week</option>
            <option value="4">15-20 hours per week</option>
            <option value="5">20+ hours per week</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select School/Social Driven:</option>
            <option value="1">Very School Driven</option>
            <option value="2">Somewhat School Driven</option>
            <option value="3">Neutral</option>
            <option value="4">Somewhat Social Driven</option>
            <option value="5">Very Social Driven</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Study Habits:</option>
            <option value="1">Study in the Morning</option>
            <option value="2">Study in the Afternoon</option>
            <option value="3">Study at Night</option>
        </select>
    </div>
        <br> </br>
    <h4>Professional Assessment:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Have you had an internship experience?:</option>
            <option value="1">Yes</option>
            <option value="2">No</option>
        </select>
    </div>
        <br> </br>
    <p>If yes, where did you intern and what was your job title?</p>
    <asp:TextBox ID="TextBox13" runat="server" Width="400px"></asp:TextBox>
    <p>What is your dream job?</p>
    <asp:TextBox ID="TextBox14" runat="server" Width="400px"></asp:TextBox>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">What kind of company would you most like to work for?</option>
            <option value="1">Large Company</option>
            <option value="2">Small Company/Business</option>
            <option value="2">Family Practice/Entrepreneurship</option>
        </select>
    </div>
        <br> </br>   
        <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">What industry is most interesting to you?</option>
            <option value="1">Education</option>
            <option value="2">Health Care</option>
            <option value="2">Retail</option>
            <option value="2">Business to Business</option>
            <option value="2">Hospitality</option>
            <option value="2">Financial Services</option>
            <option value="2">Human Resources</option>
            <option value="2">Sports Management</option>
            <option value="2">Other</option>
        </select>
    </div>
        <br> </br>
    <h4>Additional Information:</h4>
    <p>What are you hobbies/interests?</p>
    <asp:TextBox ID="TextBox7" runat="server" Width="400px"></asp:TextBox>
    <p>Why did you join Tippie Tech?</p>
    <asp:TextBox ID="TextBox8" runat="server" Width="400px"></asp:TextBox>
    <p>What would you like to get out of the mentorship program?</p>
    <asp:TextBox ID="TextBox15" runat="server" Width="400px"></asp:TextBox>
    <p>Why did you choose your major?</p>
    <asp:TextBox ID="TextBox9" runat="server" Width="400px"></asp:TextBox>
    <p>What other student organizations are you invovled in?</p>
    <asp:TextBox ID="TextBox16" runat="server" Width="400px"></asp:TextBox>
    <p>What can Tippie Tech do to ensure your personal success?</p>
    <asp:TextBox ID="TextBox10" runat="server" Width="400px"></asp:TextBox>
    <br> </br>
    <div class="vertical-center">
        <button>Submit</button>
    </div>

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

</body>
</html>

</asp:Content>

