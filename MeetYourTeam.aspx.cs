//using Microsoft.Ajax.Utilities;
//using Microsoft.AspNet.Identity;
//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace MentorAppFinal
//{
//    public partial class MeetYourTeam : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            var userID = User.Identity.GetUserId();

//            string user = Convert.ToString(userID);

//            if (!IsPostBack)
//            {
//                clearfields();
//                SqlDataSource1.SelectParameters["ID"].DefaultValue = user;

//            }
//        }

//        protected void btnSubmit_Click(object sender, EventArgs e)
//        {
//            if (Page.IsValid)
//            {
//                var userID = User.Identity.GetUserId();

//                string user = Convert.ToString(userID);

//                string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
//                SqlConnection con = new SqlConnection(mainconn);
//                con.Open();
//                SqlCommand sqlcomm = new SqlCommand();
//                string selectSQL = "SELECT from MEMBERS (Name, Position, Phone, Pronouns, Year, Majors, TeamNumber) WHERE INSERTED.MemberID VALUES ((select TeamNumber FROM TEAM where TeamNumber = (select Username FROM AspNetUsers where Id = @TeamNumber)), @Name, @Position, @Phone, @Pronouns, @Year, @Majors, @TeamNumber);";
//                SqlCommand cmd = new SqlCommand(selectSQL, con);

//                var MemberID = (int)cmd.ExecuteScalar();

//                Response.Redirect("MeetYourTeam.aspx");
//            }
//        }
//    }
//}