using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Project
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string insert = "insert into UserDetails (UserType,Username,Password,ConfirmPassword,status,UserEmailId,UserAddress,UserPhoneno,SecurityQuestion,SecurityAnswer) values ('" + drp_usertype.SelectedValue + "','" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtConfirmPassword.Text + "','0','" + txtEmail.Text + "','" + txtadd.Text + "','" + user_phonenumber.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "')";

                SqlCommand cmd = new SqlCommand(insert, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Registration Successfull');", true);
                    //Response.Redirect("Login.aspx");
                    

                    ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Registration Successfull');window.location='Login.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Cannot Register, Please Try Again.');window.location='Registration.aspx';", true);
                }
            }
        }
    }
}