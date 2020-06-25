<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProfile.aspx.cs" Inherits="MentorAppFinal.CreateProfile" %>
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
<fieldset id="form1" runat="server" method="post" class="form-horizontal" defaultfocus="txtEmail1" defaultbutton="btnSubmit">
    <div class="jumbotron">
        <h1>Create Profile</h1>
        </div>

        <div class="form-group col-md-12">
        <label class="control-label col-sm-3">Position:</label>
        <div class="col-sm-5">
            <asp:DropDownList ID="ddlPosition" runat="server" CssClass="txtbox" Height="34px" Width="1180px">
                <asp:ListItem Selected="True" Value="None">- Select mentor or mentee: -</asp:ListItem>
                <asp:ListItem Value="1">Mentor</asp:ListItem>
                <asp:ListItem Value="2">Mentee</asp:ListItem>
            </asp:DropDownList>
        </div>

        <h4>Contact Information:</h4>

    <div class="form-group col-md-12">
        <label class="control-label col-sm-3">Name:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control txtbox"></asp:TextBox>
        </div>

    <div class="form-group col-md-12">
        <label class="control-label col-sm-3">HawkID:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtHawkID" runat="server" CssClass="form-control txtbox"></asp:TextBox>
        </div>

    <div class="form-group col-md-12">
        <div class="col-sm-3"></div>
        <div class="col-sm-5">
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="Btn"  OnClick="BtnSubmit_Click" Width="125px" />
        </div>
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

</body>
</html>
</asp:Content>

