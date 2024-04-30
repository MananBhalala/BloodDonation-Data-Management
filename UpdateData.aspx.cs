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
    public partial class UpdateData : System.Web.UI.Page
    {
        public static SqlConnection con;
        public static SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();

            }
            con = new SqlConnection();
            cmd = new SqlCommand();

            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=M:\.NET\BloodDonationManagement\App_Data\BloodDatabase.mdf;Integrated Security=True";
            cmd.CommandText = "BloodProcedure";

            cmd.Connection = con;
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
            gvBloodUpd.DataSource = dataReader;
            gvBloodUpd.DataBind();
            dataReader.Close();

            con.Close();
        }

        protected void gvBloodUpd_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void btnUpdate_Click(object sender, EventArgs e)
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
                cmd.Parameters.AddWithValue("@op", 2);

                con.Open();

                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Write("<script>alert('Update Successful !!!')</script>");

                    FillGrid();

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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@did", DonID.Text);
                cmd.Parameters.AddWithValue("@op", 3);

                con.Open();
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Write("<script>alert('Delete Successfully !')</script>");
                    FillGrid();

                    DonID.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Something Went Wrong')</script>");
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