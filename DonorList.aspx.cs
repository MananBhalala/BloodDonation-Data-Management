using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonationManagement
{
    public partial class DonorList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();
                FillSearchBG();
                FillSearchCity();
            }

        }

        private void FillSearchCity()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=M:\.NET\BloodDonationManagement\App_Data\BloodDatabase.mdf;Integrated Security=True";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "BloodProcedure";

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@dcity", SearchCity.Text);

            cmd.Parameters.AddWithValue("@op", 5);
            con.Open();

            SqlDataReader dataReader = cmd.ExecuteReader();
            gvSerchDonor.DataSource = dataReader;
            gvSerchDonor.DataBind();
            dataReader.Close();

            con.Close();


        }

        private void FillSearchBG()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=M:\.NET\BloodDonationManagement\App_Data\BloodDatabase.mdf;Integrated Security=True";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "BloodProcedure";

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@bg", SearchBG.Text);

            cmd.Parameters.AddWithValue("@op", 4);
            con.Open();

            SqlDataReader dataReader = cmd.ExecuteReader();
            gvSerchDonor.DataSource = dataReader;
            gvSerchDonor.DataBind();
            dataReader.Close();

            con.Close();


        }

        private void FillGrid()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=M:\.NET\BloodDonationManagement\App_Data\BloodDatabase.mdf;Integrated Security=True";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from DonorTable";

            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@op", 4);

            con.Open();

            SqlDataReader dataReader = cmd.ExecuteReader();
            gvBlood.DataSource = dataReader;
            gvBlood.DataBind();
            dataReader.Close();

            con.Close();
        }

        protected void gvBlood_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                String BGroup = Convert.ToString(e.Row.Cells[2].Text);
                if (BGroup == "O Pos")
                {
                    e.Row.BackColor = Color.OrangeRed;
                }
            }
        }

        protected void btnEditData_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateData.aspx");
        }

        protected void btnSID_Click(object sender, EventArgs e)
        {
            FillSearchBG();

        }

        protected void btnSBG_Click(object sender, EventArgs e)
        {
            FillSearchCity();
            
        }
    }
}