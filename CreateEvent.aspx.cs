using MentorAppFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MentorAppFinal
{
    public partial class CreateEvent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=bais-mssql.database.windows.net; Initial Catalog=mentorapplication; Persist Security Info=True;User ID=mentorapp-app; Password=45tq246acXcgcQHaewiLOIumno2(8kjhPUGGlweMZrQNXlN; Connect Timeout=30; Encrypt=True; TrustServerCertificate=False; ApplicationIntent=ReadWrite; MultiSubnetFailover=False");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearFields1();
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into EVENT Values('" + txtMeetingCode.Text + "','" + txtTitle.Text + "','" + intPoint.Text + "','" + txtDate.Text + "', '" + txtStartTime.Text + "', '" + txtEndTime.Text + "', '" + txtLocation.Text + "', '" + txtMore.Text + "'); ";
                cmd.ExecuteNonQuery();
                con.Close();
                ClearFields1();
                lblSubmit.Text = "Submitted";
            }
            else
            {
                //ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

        }

        private void ClearFields1()
        {
            txtMeetingCode.Text = "";
            txtTitle.Text = "";
            intPoint.Text = "";
            txtDate.Text = "";
            txtStartTime.Text = "";
            txtEndTime.Text = "";
            txtLocation.Text = "";
            txtMore.Text = "";
        }

    }
}