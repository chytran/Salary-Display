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
    public partial class AddingSalary : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loadData(object sender, EventArgs e)
        {
            // Get connection String
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            var totalAmount = int.Parse(hours.Text) * int.Parse(salaryHourly.Text);
            // create sql connection to database

            if (totalAmount < 0)
            {
                totalAmount = 0;
            } else
            {
                using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE salary " +
                    "SET Amount = Amount + " + totalAmount + ", Hours = Hours + " + hours.Text + " WHERE Name = 'Josh'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                }
            }
            }
            
            Response.Redirect("Default.aspx");
        }

        
    }
}