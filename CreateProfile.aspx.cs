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
                ClearFields();
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                var userID = User.Identity.GetUserId();

                string user = Convert.ToString(userID);

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
                    ddlMusic.SelectedValue + "', '" + ddlActivity.SelectedValue + "', '" + ddlFood.SelectedValue + "', '" + ddlTime.SelectedValue + "', '" +
                    ddlOpportunity.SelectedValue + "', '" + ddlHours.SelectedValue + "', '" + ddlStudy.SelectedValue + "', '" + ddlStudyTime.SelectedValue + "', '" +
                    ddlInternship.SelectedValue + "', '" + txtWhere.Text + "', '" + txtDream.Text + "', '" + ddlCompany.SelectedValue + "', '" + ddlIndustry.SelectedValue + "', '" +
                    txtHobby.Text + "', '" + txtWhy.Text + "', '" + txtProgram.Text + "', '" + txtChoose.Text + "', '" + txtOrgs.Text + "', '" + txtSuccess.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                ClearFields();
                lblSubmit.Text = "Submitted";
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