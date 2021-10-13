using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


namespace Project
{
    public partial class View_Delivery_Person : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM UserDetails where UserType='Delivery Person'", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptCustomers.DataSource = dt;
                        rptCustomers.DataBind();
                    }
                }
            }
        }
        protected void rptCustomers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}