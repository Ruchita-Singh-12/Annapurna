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
    public partial class Delivery_Person_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select ID,Username,UserPhoneno, UserAddress from UserDetails where UserEmailId=@EMAIL and UserType = 'Delivery Person' ";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@EMAIL", dpmail.Text);

                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                dpID.Text = dr[0].ToString();
                dpName.Text = dr[1].ToString();
                dpphn.Text = dr[2].ToString();
                dpadd.Text = dr[3].ToString();
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string update = "update UserDetails set UserAddress  =  '" + dpadd.Text + "',Username='" + dpName.Text + "',UserEmailId='" + dpmail.Text + "',UserPhoneno='" + dpphn.Text + "' where ID  =  " + dpID.Text + " and UserType = 'Delivery Person'";


                SqlCommand cmd = new SqlCommand(update, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Record Updated Successfully');", true);
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
                string update = "delete from UserDetails where ID  =  " + dpID.Text + " and UserType = 'Delivery Person'";

                SqlCommand cmd = new SqlCommand(update, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Record Deleted Successfully');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Cannot Delete Record, Please Try Again.');", true);
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dpID.Text = "";
            dpName.Text = "";
            dpmail.Text = "";
            dpphn.Text = "";
            dpadd.Text = "";
        }
    }
}