using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentorAppFinal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clearFields();
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into IP_Applicants Values('" + txtAmount.Text + "','" + txtDate.Text + "', '" + txtFName.Text + "', '" + txtLName.Text + "', '" + txtEmail1.Text + "', '" + ddlYear.SelectedValue + "', '" + txtSchool.Text + "', '" + txtPhone.Text + "', '" + txtAddress.Text + "', '" + txtCity.Text + "', '" + ddlState.SelectedValue + "', '" + txtZip.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();

                lblSubmit.Text = "Thanks for applying, we'll be in touch shortly!";
                lblSubmit.Visible = true;
                lblPrior.Text = "";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearFields();
        }

        protected void clearFields()
        {
            txtAmount.Text = "";
            txtDate.Text = "mm/dd/yyyy";
            txtFName.Text = "";
            txtLName.Text = "";
            txtEmail1.Text = "";
            txtEmail2.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtSchool.Text = "";
            ddlState.SelectedValue = "";
            ddlYear.SelectedValue = "";
            txtZip.Text = "";
            txtPhone.Text = "";
            lblSubmit.Visible = false;
            lblPrior.Text = "";
        }

        protected void cbPrior_CheckedChanged(object sender, EventArgs e)
        {
            ApplicationList aList = ApplicationList.GetApplications();
            Applicants a = aList.GetAddress(txtEmail1.Text);
            if (a != null)
            {
                txtAddress.Text = a.Address;
                txtPhone.Text = a.Phone;
                txtCity.Text = a.City;
                ddlState.SelectedValue = a.State;
                txtZip.Text = a.Zip;
            }

            else
            {
                lblPrior.Text = "Cannot find in memory";
            }
        }

    }

}