using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentorAppFinal
{
    public partial class YourPoints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var userID = User.Identity.GetUserId();

            string user = Convert.ToString(userID);

            if (!IsPostBack)
            {
                SqlDataSource1.SelectParameters["ID"].DefaultValue = user;
            }
        }
    }
}