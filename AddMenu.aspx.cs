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
    public partial class AddMenu : System.Web.UI.Page
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
                string insert = "insert into MenuDetails (ItemName,Category,SupplierName,Description,Rate) values ('" + IName.Text + "','" + drp_category.SelectedValue + "','" + Sname.Text + "','" + Desc.Text + "','" + Rate.Text + "')";

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            IName.Text = "";
            drp_category.SelectedIndex = 0;
            Sname.Text = "";
            Desc.Text = "";
            Rate.Text = "";
            


        }

        
    }
}