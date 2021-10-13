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
    public partial class ViewAndEditCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                refreshdata();
            }
        }
        public void refreshdata()
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from CustomerDetails", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            var id = ""; // Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtname = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox txtcity = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            //var username = GridView1.DataKeys[e.RowIndex].Values["TextBox1"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from CustomerDetails where ID =@CustomerID", con);
            cmd.Parameters.AddWithValue("ID", id);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            refreshdata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            refreshdata();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            refreshdata();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            TextBox txtname = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox txtcity = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_updatedata", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("name", txtname.Text);
            cmd.Parameters.AddWithValue("city", txtcity.Text);
            cmd.Parameters.AddWithValue("id", id);

            int i = cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            refreshdata();


        }

  

       
    }
}