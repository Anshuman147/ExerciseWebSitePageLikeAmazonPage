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
    public partial class WebForm1 : System.Web.UI.Page
    {
        private SqlConnection con = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {

                SqlDataAdapter adp1 = new SqlDataAdapter("select ProductName,Imagepath,Price from Watch", con);
                SqlDataAdapter adp2 = new SqlDataAdapter("select ProductName,Imagepath,Price from Phone", con);
                DataSet ds = new DataSet();
                adp1.Fill(ds);
                adp2.Fill(ds);
                dlProducts.DataSource = ds;
                dlProducts.DataBind();

            }
        }
    }
}