<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="MentorAppFinal.CreateEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<fieldset id="form1" runat="server" method="post" class="form-horizontal" defaultfocus="txtEmail1" defaultbutton="BtnSubmit">
    <div class="jumbotron">
        <h1>Create an Event</h1>
    </div>
<br> <br />
    <h2>Add Event Details:</h2>
<br> <br />
        <div>
            <asp:Label runat="server" AssociatedControlID="txtID">Event ID:</asp:Label>
                <asp:TextBox runat="server" ID="txtID" CssClass="form-control txtbox" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtID"
                    CssClass="text-danger" ErrorMessage="The event ID field is required." />
            </div>
<br> <br />
        <div>
            <asp:Label runat="server" AssociatedControlID="txtTitle">Event Title:</asp:Label>
                <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control txtbox" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitle"
                    CssClass="text-danger" ErrorMessage="The title field is required." />
            </div>
<br> <br />
        <div>
            <asp:Label runat="server" AssociatedControlID="txtPoint">Event Point Value:</asp:Label>
                <asp:TextBox runat="server" ID="txtPoint" CssClass="form-control txtbox" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPoint"
                    CssClass="text-danger" ErrorMessage="The point field is required." />
            </div>
<br> <br />
    <div>
        <label>Event Date:</label>
        <asp:TextBox ID="txtDate" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
    </div>
<br> <br />
    <div>
        <label>Event Start Time:</label>
        <asp:TextBox ID="txtStartTime" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
    </div>
<br> <br />
    <div>
        <label>Event End Time:</label>
        <asp:TextBox ID="txtEndTime" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
    </div>
<br> <br />
    <div>
        <label>Event Location:</label>
        <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
    </div>
<br> <br />
    <div>
        <label>More Information:</label>
        <asp:TextBox ID="txtMore" runat="server" CssClass="form-control txtbox" Width="400px"></asp:TextBox>
    </div>
<br> <br />
    <div>
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="Btn"  OnClick="BtnSubmit_Click" Width="125px" />
        <asp:label class="col-sm-4" ID="lblSubmit" runat="server"></asp:label>
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