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
    public partial class CheckIntoEvent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=bais-mssql.database.windows.net; Initial Catalog=mentorapplication; Persist Security Info=True;User ID=mentorapp-app; Password=45tq246acXcgcQHaewiLOIumno2(8kjhPUGGlweMZrQNXlN; Connect Timeout=30; Encrypt=True; TrustServerCertificate=False; ApplicationIntent=ReadWrite; MultiSubnetFailover=False");

        public object Name { get; private set; }

        public object Password { get; private set; }

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
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into SignIntoEvent Values('" + txtName.Text + "','" + txtHawkID.Text + "', '" + txtPassword.Text + "'); ";
                cmd.ExecuteNonQuery();
                con.Close();
                ClearFields();
                lblSubmit.Text = "Submitted";
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }



            protected void ClearFields()
            {
                txtName.Text = "";
                txtHawkID.Text = "";
                txtPassword.Text = "";
            }

        }

    }