using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Salary_Display
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loadData(object sender, EventArgs e)
        {
            // Get connection String
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            // create sql connection to database
            using(SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from salary", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    SalaryGrid.DataSource = reader;
                    SalaryGrid.DataBind();
                }
            }
        }
    }
}