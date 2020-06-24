<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DropDown.aspx.cs" Inherits="MentorAppFinal.DropDown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    protected void ddlTest_SelectedIndexChanged(object sender, EventArgs e)
   {   
   }
    protected void ddlTest_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedText = ddlTest.SelectedItem.Text;
        string selectedValue = ddlTest.SelectedItem.Value;
        //--- Show results in page.
        Response.Write("Selected Text is " + selectedText + " and selected value is :" + selectedValue);
    }
</style>
<asp:dropdownlist runat="server" id="ddlTest" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Position" DataValueField="Position">
     <asp:listitem text="Red" value="1"></asp:listitem>
     <asp:listitem text="Black" value="2"></asp:listitem>
     <asp:listitem text="Blue" value="3"></asp:listitem>
     <asp:listitem text="Green" value="4"></asp:listitem>
     <asp:listitem text="Yellow" value="5"></asp:listitem>
</asp:dropdownlist>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Position], [Name], [HawkID] FROM [Table2]"></asp:SqlDataSource>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" OnTextChanged="Email_TextChanged" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        <button>Submit</button>
    </div>
    </asp:Content>
