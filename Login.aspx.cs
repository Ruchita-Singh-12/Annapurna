using System;
using System.Collections.Generic;
using System.Linq;
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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string constr=ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
                using(SqlConnection con=new SqlConnection(constr))
                {
                    con.Open();
                    string qry="select Username,Password,UserType from UserDetails where Username='"+UserName.Text+"' and password=@Password";
                    SqlCommand cmd=new SqlCommand(qry,con);
                    cmd.Parameters.AddWithValue("@LoginID",UserName.Text);
                    cmd.Parameters.AddWithValue("@Password",Password.Text);
                    SqlDataReader dr=cmd.ExecuteReader();
                    if(dr.Read())
                    {
                        if (dr[2].ToString() == "Customer")
                            //Session["User"] UserName.TEXT;
                            Response.Redirect("CustomerPage.aspx");
                        else if (dr[2].ToString() == "Admin")
                            Response.Redirect("AdminPage.aspx");
                        else if (dr[2].ToString() == "Supplier")
                            Response.Redirect("SupplierPage.aspx");
                        else
                            Response.Redirect("DeliveryPersonPage.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Invalid Credentials,Please Try Again.');", true);

                    }
                }
        }
    }
}