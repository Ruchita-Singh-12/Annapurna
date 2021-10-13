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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Verify(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select SecurityAnswer,Password from UserDetails where UserEmailId=@EMAIL";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@EMAIL", UserName.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr[0].ToString() == SA.Text)
                        //Session["User"] UserName.TEXT;
                        Password.Text = dr[1].ToString();
                    else
                   
                        ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Incorrect Answer,Please Try Again.');window.location='ForgotPassword.aspx';", true);

                }
                
            }

        }

        protected void Request_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select SecurityQuestion from UserDetails where UserEmailId=@EMAILID ";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@EMAILID", UserName.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                SQ.Text = dr[0].ToString();
              
            }
        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

    

       

       

       
    }
}