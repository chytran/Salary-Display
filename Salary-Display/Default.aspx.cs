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
            // Get connection String
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            // create sql connection to database
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Name, Amount, Hours FROM salary", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
            }
        }

        protected void onView(object sender, EventArgs e)
        {
            // Get connection String
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            // create sql connection to database
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM salary", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
            }
        }
    }
}