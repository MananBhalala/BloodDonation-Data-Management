using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonationManagement
{
    public partial class Home : System.Web.UI.Page
    {
        public static SqlConnection con;
        public static SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            cmd = new SqlCommand();

            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=M:\.NET\BloodDonationManagement\App_Data\BloodDatabase.mdf;Integrated Security=True";
            cmd.CommandText = "BloodProcedure";

            cmd.Connection = con;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@did", DonID.Text);
                cmd.Parameters.AddWithValue("@dname", DonName.Text);
                cmd.Parameters.AddWithValue("@bg", ddlBG.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dage", DonorAge.Text);
                cmd.Parameters.AddWithValue("@dcity", DonorCity.Text);
                cmd.Parameters.AddWithValue("@dmob", DonorMob.Text);
                cmd.Parameters.AddWithValue("@op", 1);

                con.Open();

                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Write("<script>alert('Registration Successful " + DonName.Text + " !!!')</script>");

                    DonID.Text = "";
                    DonName.Text = "";
                    ddlBG.Text = "";
                    DonorAge.Text = "";
                    DonorCity.Text = "";
                    DonorMob.Text = "";
                }
                else
                {
                    Response.Write("Something Went Wrong");
                }
            }
            catch (SqlException sqlex)
            {
                Response.Write(sqlex.Message);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();

            }
        }

    }
}
