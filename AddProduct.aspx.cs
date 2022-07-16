using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace ExerciseWebSitePageLikeAmazon
{
    public partial class AddProduct : System.Web.UI.Page
    {
        private SqlConnection con = null;
        
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void GetData()
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {
                if (DlCategory.SelectedItem.ToString() == "Phone")
                {
                    using (cmd = new SqlCommand("usp_PhoneTableInsert", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@ProductName", TxtProductName.Text);
                        cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                        cmd.Parameters.AddWithValue("@Category", DlCategory.SelectedItem.ToString());
                        cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
                        cmd.Parameters.AddWithValue("@Quantity", TxtQuantity.Text);

                        if (FupImage.HasFile)
                        {
                            string filename = FupImage.PostedFile.FileName;//it store the only file name
                            string extn = FupImage.PostedFile.ContentType;//it store the file extension

                            //checking the file extension type
                            if (extn == "image/jpeg" || extn == "image/png")
                            {
                                cmd.Parameters.AddWithValue("@ImagePath", @"~\Content\Images\" + filename);
                                FupImage.PostedFile.SaveAs(Server.MapPath(@"~\Content\Images\" + filename));
                            }
                            else
                            {
                                LblMessage.Text = "Please choose Any picture";
                            }
                        }
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        cmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    using (cmd = new SqlCommand("usp_WatchTableInsert", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@ProductName", TxtProductName.Text);
                        cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                        cmd.Parameters.AddWithValue("@Category", DlCategory.SelectedItem.ToString());
                        cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
                        cmd.Parameters.AddWithValue("@Quantity", TxtQuantity.Text);

                        if (FupImage.HasFile)
                        {
                            string filename = FupImage.PostedFile.FileName;//it store the only file name
                            string extn = FupImage.PostedFile.ContentType;//it store the file extension

                            //checking the file extension type
                            if (extn == "image/jpeg" || extn == "image/png")
                            {
                                cmd.Parameters.AddWithValue("@ImagePath", @"~\Content\Images\" + filename);
                                FupImage.PostedFile.SaveAs(Server.MapPath(@"~\Content\Images\" + filename));
                            }
                            else
                            {
                                LblMessage.Text = "Please choose Any picture";
                            }
                        }
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }
        public void CancelOperation()
        {
            TxtProductName.Text = "";
            TxtDescription.Text = "";
            TxtPrice.Text = "";
            TxtQuantity.Text = "";
            
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            this.GetData();
            
            this.CancelOperation();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            this.CancelOperation();
        }
    }
}