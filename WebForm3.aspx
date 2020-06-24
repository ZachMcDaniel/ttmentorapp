<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MentorAppFinal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /*the container must be positioned relative:*/
        .ddlTest {
            position: relative;
            font-family: "Poppins", sans-serif;
        }

            .ddlTest select {
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
    <asp:dropdownlist runat="server" id="ddlTest" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Position" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged">
     <asp:listitem text="Red" value="1"></asp:listitem>
     <asp:listitem text="Black" value="2"></asp:listitem>
     <asp:listitem text="Blue" value="3"></asp:listitem>
     <asp:listitem text="Green" value="4"></asp:listitem>
     <asp:listitem text="Yellow" value="5"></asp:listitem>
</asp:dropdownlist>
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
    <p>Do you have transportation?</p>
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
    <p></p>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Major:</option>
            <option value="1">Business Analytics and Information Systems</option>
            <option value="2">Finance</option>
            <option value="3">Accounting</option>
            <option value="4">Economics</option>
            <option value="5">Management</option>
            <option value="6">Marketing</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Certificate:</option>
            <option value="1">International Business</option>
            <option value="2">BMW</option>
            <option value="3">Citroen</option>
            <option value="4">Ford</option>
            <option value="5">Honda</option>
        </select>
    </div>
    <br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Minor:</option>
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
            <option value="0">Select GPA:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <h4>Demographic Information:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Gender Identity:</option>
            <option value="1">Female</option>
            <option value="2">Male</option>
            <option value="3">Transgender</option>
            <option value="4">Non-Binary</option>
            <option value="5">Gender Variant/Non-Conforming</option>
            <option value="6">Not Listed</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Sexual Orientation:</option>
            <option value="1">Heterosexual/Straight</option>
            <option value="2">Homosexual</option>
            <option value="3">Bisexual</option>
            <option value="4">Prefer Not to Answer</option>
            <option value="5">Other</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Race:</option>
            <option value="1">Asian</option>
            <option value="2">Black/African</option>
            <option value="3">Caucasian</option>
            <option value="4">Hispanic/Latino</option>
            <option value="5">Native American</option>
            <option value="5">Pacific Islander</option>
            <option value="5">Mixed Race</option>
            <option value="5">Other</option>
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
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Religion:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Disabilities:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Political Status:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Veteran Status:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <br> </br>
    <h4>Strengths Assessment:</h4>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Introvert/Extrovert:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Emotional/Logical:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Learning Style:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Leader/Follower:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Detail/Visonary Oriented:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Quiet/Busy Study Space:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select what your friends think of you:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Favorite Music Style:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Favorite Games:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
        <br> </br>
     <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Athletics/Sports:</option>
            <option value="1">Yes</option>
            <option value="2">Sometimes</option>
            <option value="3">No</option>
        </select>
    </div>
        <br> </br>
    <div class="custom-select" style="width:400px;">
        <select>
            <option value="0">Select Study Habits:</option>
            <option value="1">1-1.5</option>
            <option value="2">1.5-2</option>
            <option value="3">2-2.5</option>
            <option value="4">2.5-3</option>
            <option value="5">3-3.5</option>
            <option value="6">3.5-4</option>
        </select>
    </div>
    <br> </br>
    <h4>Additional Information:</h4>
    <p>What are you hobbies/interests?</p>
    <asp:TextBox ID="TextBox7" runat="server" Width="400px"></asp:TextBox>
    <p>Why did you join Tippie Tech?</p>
    <asp:TextBox ID="TextBox8" runat="server" Width="400px"></asp:TextBox>
    <p>Why did you choose your major?</p>
    <asp:TextBox ID="TextBox9" runat="server" Width="400px"></asp:TextBox>
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
