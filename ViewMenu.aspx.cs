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
    public partial class ViewMenu : System.Web.UI.Page
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
            string query = "select * from MenuDetails";
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

    

            protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
            {
                Response.Redirect("Order.aspx");
            }

            

     



   



  

      

        



     
        
    }
}