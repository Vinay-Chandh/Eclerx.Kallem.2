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
    public partial class ViewQualification : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataSet ds = new DataSet();

        private DataTable dataTable = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            //using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString))
            //{
            //    using (adapter = new SqlDataAdapter("Select * from Qualification", con))
            //    {
            //        adapter.Fill(ds, "Qualification1");
            //        Repeater1.DataSource = ds.Tables["Qualification1"];
            //        Repeater1.DataBind();

            //    }
            //}

            string query = "Select * from Qualification";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            // create data adapter
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // this will query your database and return the result to your datatable
            da.Fill(dataTable);
            con.Close();
            da.Dispose();
            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();

            var remove = Request["Remove"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQualification.aspx");
        }
    }
}