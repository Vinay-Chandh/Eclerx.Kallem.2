using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Eclerx.Kallem._2
{
    public partial class AddQualification : System.Web.UI.Page
    {

        private SqlConnection con = null;
        private SqlCommand cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_AddQualification", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@QualificationName", TxtQualificationName.Text);
                    cmd.Parameters.AddWithValue("@Institute", TxtInstitute.Text);
                    cmd.Parameters.AddWithValue("@YearOfPassing", TxtYearOfPassing.Text);
                    cmd.Parameters.AddWithValue("@University", TxtUniversity.Text);


                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    cmd.ExecuteNonQuery();
                    Response.Redirect("ViewQualification.aspx");
                }
            }
        }
    }
}