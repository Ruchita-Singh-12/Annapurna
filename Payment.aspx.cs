using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Project
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void rdbtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdbtn.SelectedItem.Text == "Online")
            {
                Response.Redirect("OnlinePayment.aspx");
            }
            else
            {
                Response.Redirect("ThankYou.aspx");
            }
        }
    }
}