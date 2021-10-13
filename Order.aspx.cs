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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            date.Text = DateTime.Now.ToString("d");
            stat.Text="Payment Pending";
        }

        protected void pay_click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string insert = "insert into OrderDetails (ItemID,CustomerID,Subscription,Date,NumberOfOrders,CustomerAddress,SupplierAddress,TotalAmount) values ('" + itemid.Text + "','" + custid.Text + "','" + sub.SelectedValue + "','" + date.Text + "','" + numodr.Text + "','" + custadd.Text + "','" + supadd.Text + "','" + amt.Text + "')";

                SqlCommand cmd = new SqlCommand(insert, con);
                m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Record Submitted Successfully');window.location='Payment.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Cannot submit Record, Please Try Again.');window.location='Order.aspx';", true);
                }
            }
        }

        protected void save_click(object sender, EventArgs e)
        {
            int m = 0;
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                string insert = "insert into OrderDetails (ItemID,CustomerID,Subscription,Date,NumberOfOrders,CustomerAddress,SupplierAddress,TotalAmount) values ('" + itemid.Text + "','" + custid.Text + "','" + sub.SelectedValue + "','" + date.Text + "','" + numodr.Text + "','" + custadd.Text + "','" + supadd.Text + "','" + amt.Text + "')";

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
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select Rate,Subscription,NumberOfOrders,TotalAmount from OrderDetails ";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                double r, n, t;
                r = Convert.ToDouble(rate.Text);
                n = Convert.ToDouble(numodr.Text);
                
             
                if (sub.SelectedValue == "Monthly")
                {
                    t = r * n * 30.0;
                    amt.Text = t.ToString();
                }
                else if (sub.SelectedValue == "Yearly")
                {
                    t = r * n * 365;
                    amt.Text = t.ToString();
                }
                else if (sub.SelectedValue == "Today")
                {
                    t = r * n ;
                    amt.Text = t.ToString();
                }
            }





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string qry = "select Rate from MenuDetails where ItemID=@ID ";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@ID", itemid.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                rate.Text = dr[0].ToString();

            }
        }

       
    }
}