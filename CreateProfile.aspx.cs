using MentorAppFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.AspNet.Identity;
using System.Security.Cryptography;
using System.Configuration;

namespace MentorAppFinal
{
    public partial class CreateProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=bais-mssql.database.windows.net; Initial Catalog=mentorapplication; Persist Security Info=True;User ID=mentorapp-app; Password=45tq246acXcgcQHaewiLOIumno2(8kjhPUGGlweMZrQNXlN; Connect Timeout=30; Encrypt=True; TrustServerCertificate=False; ApplicationIntent=ReadWrite; MultiSubnetFailover=False");
        private object result;

        public object Name { get; private set; }
        public object Position { get; private set; }
        public object ErrorMessage { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //ClearFields();
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                var userID = User.Identity.GetUserId();

                string user = Convert.ToString(userID);


                string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(mainconn);
                con.Open();
                SqlCommand sqlcomm = new SqlCommand();

                string check = "select userid from mentorapplication.dbo.Members where userid = @ID;";
                SqlCommand command = new SqlCommand(check, con);

                command.Parameters.AddWithValue("@ID", user);

                SqlDataReader reader = command.ExecuteReader();
                if (!reader.Read())
                {
                    con.Close();

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Insert into Members Values('" + txtName.Text + "','" + ddlPosition.SelectedValue + "', '" + txtHawkID.Text + "', '" +
                        txtEmail.Text + "', '" + txtPhone.Text + "', '" + txtHometown.Text + "', '" + txtPronouns.Text + "', '" + ddlTransportation.SelectedValue + "', '" +
                        ddlYear.SelectedValue + "', '" + ddlMajor.SelectedValue + "', '" + ddlCertificate.SelectedValue + "', '" + txtMinors.Text + "', '" +
                        ddlGPA.SelectedValue + "', '" + ddlGender.SelectedValue + "', '" + ddlRace.SelectedValue + "', '" + ddlFirstGeneration.SelectedValue + "', '" +
                        ddlDisabilities.SelectedValue + "', '" + ddlTypeDisabilities.SelectedValue + "', '" + ddlVeteran.SelectedValue + "', '" + txtOther.Text + "', '" +
                        ddlExtrovert.SelectedValue + "', '" + ddlEmotional.SelectedValue + "', '" + ddlLeader.SelectedValue + "', '" + ddlDetail.SelectedValue + "', '" +
                        ddlQuiet.SelectedValue + "', '" + ddlFriends.SelectedValue + "', '" + ddlAthletics.SelectedValue + "', '" + ddlGames.SelectedValue + "', '" +
                        ddlMusic.SelectedValue + "', '" + ddlActivity.SelectedValue + "', '" + ddlFood.SelectedValue + "', '" + ddlTime.SelectedValue + "', '" + ddlCovid.SelectedValue + "', '" +
                        ddlOpportunity.SelectedValue + "', '" + ddlHours.SelectedValue + "', '" + ddlStudy.SelectedValue + "', '" + ddlStudyTime.SelectedValue + "', '" +
                        ddlInternship.SelectedValue + "', '" + txtWhere.Text + "', '" + txtDream.Text + "', '" + ddlCompany.SelectedValue + "', '" + ddlIndustry.SelectedValue + "', '" +
                        txtHobby.Text + "', '" + txtWhy.Text + "', '" + txtProgram.Text + "', '" + txtChoose.Text + "', '" + txtOrgs.Text + "', '" + txtSuccess.Text + "', '" + null + "', '" + user + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClearFields();
                    lblSubmit.Text = "Submitted";

                }

                else
                {
                    con.Close();

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Update Members set Name = '" + txtName.Text + "', Position ='" + ddlPosition.SelectedValue + "', HawkID ='" + txtHawkID.Text + "', Email ='" +
                        txtEmail.Text + "', Phone ='" + txtPhone.Text + "', Hometown = '" + txtHometown.Text + "', Pronouns ='" + txtPronouns.Text + "', Transportation = '" + ddlTransportation.SelectedValue + "', Year ='" +
                        ddlYear.SelectedValue + "', Majors = '" + ddlMajor.SelectedValue + "', Certificates ='" + ddlCertificate.SelectedValue + "', Minors = '" + txtMinors.Text + "', GPA ='" +
                        ddlGPA.SelectedValue + "', Gender ='" + ddlGender.SelectedValue + "', Race ='" + ddlRace.SelectedValue + "', [FirstGeneration] ='" + ddlFirstGeneration.SelectedValue + "', [Disabilities] ='" +
                        ddlDisabilities.SelectedValue + "', [TypeDisabilities] = '" + ddlTypeDisabilities.SelectedValue + "', [Veteran] ='" + ddlVeteran.SelectedValue + "', [Other] ='" + txtOther.Text + "', [Extrovert] ='" +
                        ddlExtrovert.SelectedValue + "', [Emotional] = '" + ddlEmotional.SelectedValue + "', [Leader] ='" + ddlLeader.SelectedValue + "', [Detail] ='" + ddlDetail.SelectedValue + "', [Quiet] ='" +
                        ddlQuiet.SelectedValue + "', [Friends] = '" + ddlFriends.SelectedValue + "', [Athletics] ='" + ddlAthletics.SelectedValue + "', [Games] = '" + ddlGames.SelectedValue + "', [Music] ='" +
                        ddlMusic.SelectedValue + "', [Activity] ='" + ddlActivity.SelectedValue + "', [Food]='" + ddlFood.SelectedValue + "', [Time] ='" + ddlTime.SelectedValue + "', [Covid]='" + ddlCovid.SelectedValue + "', [Opportunity]='" +
                        ddlOpportunity.SelectedValue + "', [Hours] = '" + ddlHours.SelectedValue + "', [Study] ='" + ddlStudy.SelectedValue + "', [StudyTime] = '" + ddlStudyTime.SelectedValue + "', [Internship] = '" +
                        ddlInternship.SelectedValue + "', [Where] ='" + txtWhere.Text + "', [Dream] ='" + txtDream.Text + "', [Company] ='" + ddlCompany.SelectedValue + "', [Industry] ='" + ddlIndustry.SelectedValue + "', [Hobby] ='" +
                        txtHobby.Text + "', [Why] = '" + txtWhy.Text + "', [Program] = '" + txtProgram.Text + "', [Choose] = '" + txtChoose.Text + "', [Orgs] ='" + txtOrgs.Text + "', [Success] = '" + txtSuccess.Text + "' where [UserID] ='" + user + "';";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClearFields();
                    lblSubmit.Text = "Profile Updated!";
                }
            }
            else
            {
                //ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }



        protected void ClearFields()
        {
            txtName.Text = "";
            ddlPosition.SelectedValue = "";
            txtHawkID.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtHometown.Text = "";
            txtPronouns.Text = "";
            ddlTransportation.SelectedValue = "";
            ddlYear.SelectedValue = "";
            ddlMajor.SelectedValue = "";
            ddlCertificate.SelectedValue = "";
            txtMinors.Text = "";
            ddlGPA.SelectedValue = "";
            ddlGender.SelectedValue = "";
            ddlRace.SelectedValue = "";
            ddlFirstGeneration.SelectedValue = "";
            ddlDisabilities.SelectedValue = "";
            ddlTypeDisabilities.SelectedValue = "";
            ddlVeteran.SelectedValue = "";
            txtOther.Text = "";
            ddlExtrovert.SelectedValue = "";
            ddlEmotional.SelectedValue = "";
            ddlLeader.SelectedValue = "";
            ddlDetail.SelectedValue = "";
            ddlQuiet.SelectedValue = "";
            ddlFriends.SelectedValue = "";
            ddlAthletics.SelectedValue = "";
            ddlGames.SelectedValue = "";
            ddlMusic.SelectedValue = "";
            ddlActivity.SelectedValue = "";
            ddlFood.SelectedValue = "";
            ddlTime.SelectedValue = "";
            ddlCovid.SelectedValue = "";
            ddlOpportunity.SelectedValue = "";
            ddlHours.SelectedValue = "";
            ddlStudy.SelectedValue = "";
            ddlStudyTime.SelectedValue = "";
            ddlInternship.SelectedValue = "";
            txtWhere.Text = "";
            txtDream.Text = "";
            ddlCompany.SelectedValue = "";
            ddlIndustry.SelectedValue = "";
            txtHobby.Text = "";
            txtWhy.Text = "";
            txtProgram.Text = "";
            txtChoose.Text = "";
            txtOrgs.Text = "";
            txtSuccess.Text = "";
        }

    }

}