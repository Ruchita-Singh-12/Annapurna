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
    public partial class SupplierDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string update = "update UserDetails set UserAddress  =  '" + Supadd.Text + "',Username='" + SupName.Text + "',UserEmailId='" + Supmail.Text + "',UserPhoneno='" + Supphn.Text + "' where ID  =  " + SupID.Text + " and UserType = 'Supplier'";
                

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

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select ID,Username,UserPhoneno, UserAddress from UserDetails where UserEmailId=@EMAIL and UserType = 'Supplier' ";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@EMAIL", Supmail.Text);

                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                SupID.Text = dr[0].ToString();
                SupName.Text = dr[1].ToString();
                Supphn.Text = dr[2].ToString();
                Supadd.Text = dr[3].ToString();
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string update = "delete from UserDetails where ID  =  " + SupID.Text + " and UserType = 'Supplier'";

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
            SupID.Text = "";
            SupName.Text = "";
            Supmail.Text = "";
            Supphn.Text = "";
            Supadd.Text = "";



        }
        }
    }
