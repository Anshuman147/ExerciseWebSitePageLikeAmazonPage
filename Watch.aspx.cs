using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExerciseWebSitePageLikeAmazon
{
    public partial class Watch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter("select ProductName,Imagepath,Price from Watch", con))
                {
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    DlProduct.DataSource = dt;
                    DlProduct.DataBind();
                }
            }
        }
    }
}