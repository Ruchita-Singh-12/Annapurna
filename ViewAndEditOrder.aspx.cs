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
    public partial class ViewAndEditOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.BindGrid();
            }
        }
private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            string query = "select * from OrderDetails";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }



        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[10].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }



        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int OrderID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            int ItemID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            int CustomerID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Subscription = (row.FindControl("txtSub") as TextBox).Text;
            string Date = (row.FindControl("txtdate") as TextBox).Text;
            string nodr = (row.FindControl("txtodr") as TextBox).Text;
            string Cadd = (row.FindControl("txtCadd") as TextBox).Text;
            string Sadd = (row.FindControl("txtSadd") as TextBox).Text;
            string totamt = (row.FindControl("txtamt") as TextBox).Text;
            string pmtstat = (row.FindControl("txtps") as TextBox).Text;

            string query = "UPDATE OrderDetails SET ItemID=@IID,CustomerID=@CID,Subscription=@sub, Date=@dt,NumberOfOrders=@nodr,CustomerAddress=@ca,SupplierAddress=@sa,TotalAmount=@ta,PaymentStatus=@ps WHERE OrderID=@Id";
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@Id", OrderID);
                    cmd.Parameters.AddWithValue("@IID", ItemID);
                    cmd.Parameters.AddWithValue("@CID", CustomerID);
                    cmd.Parameters.AddWithValue("@sub", Subscription);
                    cmd.Parameters.AddWithValue("@dt", Date);
                    cmd.Parameters.AddWithValue("@nodr", nodr);
                    cmd.Parameters.AddWithValue("@ca", Cadd);
                    cmd.Parameters.AddWithValue("@sa", Sadd);
                    cmd.Parameters.AddWithValue("@ta", totamt);
                    cmd.Parameters.AddWithValue("@ps", pmtstat);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string query = "delete from OrderDetails where OrderID=@ID";
            string constr = ConfigurationManager.ConnectionStrings["Annapurna"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            this.BindGrid();
        }



        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        } 
        }
    }
