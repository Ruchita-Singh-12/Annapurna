using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Project
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string insert = "insert into CustomerDetails (CustomerName,CustomerPhone,Address) values ('" + CustName.Text + "','" + Custphn.Text + "','" + Custadd.Text + "')";

                SqlCommand cmd = new SqlCommand(insert, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Record Submitted Successfully');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Cannot submit Record, Please Try Again.');", true);
                }
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string update = "update CustomerDetails set Address  =  '" + Custadd.Text + "' where CustomerID  =  " + CustID.Text + "";

                SqlCommand cmd = new SqlCommand(update, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Record Updated Successfull');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Cannot Update Record, Please Try Again.');", true);
                }
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string update = "delete from CustomerDetails where CustomerID  =  " + CustID.Text + "";

                SqlCommand cmd = new SqlCommand(update, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Record Deleted Successfull');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Cannot Delete Record, Please Try Again.');", true);
                }

            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select CustomerName,CustomerPhone, Address from CustomerDetails where CustomerID=@CUSTOMERID ";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@CUSTOMERID", CustID.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                CustName.Text = dr[0].ToString();
                Custphn.Text = dr[1].ToString();
                Custadd.Text = dr[2].ToString();
            }

        }
    }
}
