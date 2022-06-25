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

            // create sql connection to database
            /*using(SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE salary" +
                    "SET Amount = ", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    
                }
            } */
        }

        protected void calculate(object sneder, EventArgs e)
        {
            var totalAmount = int.Parse(hours.Text) * int.Parse(salaryHourly.Text);
            display.Text = "$" + totalAmount.ToString();
        }
    }
}