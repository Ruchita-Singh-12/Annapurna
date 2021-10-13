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
    public partial class OnlinePayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();

                string qry = "select Cardnum,NameOnCard,CVV from Bank where Cardnum=@CN";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@CN", CNum.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                if ((dr[0].ToString() == CNum.Text) && (dr[1].ToString() == Cname.Text)  && (dr[2].ToString() == cvv.Text))
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Payment Successfull');window.location='UpdateStatus.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Payment Unsuccessfull');window.location='OnlinePayment.aspx';", true);
                }

            }
        }
    }
}