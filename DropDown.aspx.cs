using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentorAppFinal
{
    public partial class DropDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {

        }
    }

    internal class SqlConnection
    {
        private string v;

        public SqlConnection(string v)
        {
            this.v = v;
        }

        public static implicit operator System.Data.SqlClient.SqlConnection(SqlConnection v)
        {
            throw new NotImplementedException();
        }
    }
}