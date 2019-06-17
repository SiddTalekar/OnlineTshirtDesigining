﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using System.Data.OleDb;

namespace OnlineTshirtDesign.Account
{
    public partial class AdminOrder : System.Web.UI.Page
    {
        private string uploadDirectory;

        protected void Page_Load(object sender, EventArgs e)
        {
            //To erase the default text in TextBox
            // Onfocus event needs to be created 
            //this.TboxBannerName.Focus();
            //this.TboxBannerDesc.Focus();
            //this.TboxBannerName. += 

            if (this.IsPostBack == false)
            {
                // to stay upadated for gridview even after page referesh 
                UpdateHomeBanner();
            }
        }

        protected void BtnAddHomeImg_Click(object sender, EventArgs e)
        {
            //Check that the file is actually being submitted  

            if (AdminUpload.PostedFile.FileName == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", "toastr.error('No file specified', 'Error')", true);
                AdminUpload.ToolTip = "NO file specified";
            }
            else
            {
                // Check the extension of the file 
                string fileExtension = Path.GetExtension(AdminUpload.PostedFile.FileName);
                // Using this code , the saved file will retain its original 
                // file name when it's placed on the server.

                string serverFileName = Path.GetFileName(AdminUpload.PostedFile.FileName);

                //Content type like MIME such as .jpeg, .png
                string contentType = AdminUpload.PostedFile.ContentType;

                // Define Ado.net Connection Object 
                MySqlConnection connection = new MySqlConnection(Master.connectionString);

                //Will use after updating the database row 
                // to show the data into GridView
                int updated = 0;

                switch (fileExtension.ToLower())
                {
                    case ".jpg":
                    case ".png":
                    case ".gif":
                        try
                        {
                            //We need disposable Object i.e(using) to Automatically close the connection 
                            //Otherwise we need to put that code in the finally block 
                            //to close the connection 

                            using (Stream fs = AdminUpload.PostedFile.InputStream)
                            {
                                using (BinaryReader br = new BinaryReader(fs))
                                {
                                    // When button is clicked , it converts the uploaded image file to BYTE array
                                    //using BinaryReader class and then saves the image file as Binary Data BLOB in 
                                    // MySql
                                    byte[] bytes = br.ReadBytes((int)fs.Length);

                                    //To generate random numbers for HomeBaneerImgId column
                                    DateTime dTime = DateTime.Now;

                                    using (connection)
                                    {
                                        // Insert Query to insert the data 
                                        string insertQuery = "INSERT INTO home_banner(";
                                        insertQuery += "HomeImgId, HomeImg, HomeBannerName, HomeBannerDesc, HomeBannerImgName)";
                                        insertQuery += "VALUES(";
                                        insertQuery += "@HomeImgId, @HomeImg , @HomeBannerName, @HomeBannerDesc, @HomeBannerImgName)";

                                        using (MySqlCommand cmd = new MySqlCommand(insertQuery, connection))
                                        {
                                            //Add the paramaters 
                                            cmd.Parameters.AddWithValue("@HomeImgId", dTime.Millisecond);
                                            cmd.Parameters.AddWithValue("@HomeImg", bytes);
                                            cmd.Parameters.AddWithValue("@HomeBannerName", TboxBannerName.Text);
                                            cmd.Parameters.AddWithValue("@HomeBannerDesc", TboxBannerDesc.Text);
                                            cmd.Parameters.AddWithValue("@HomeBannerImgName", serverFileName);

                                            // try to open database connection 
                                            connection.Open();
                                            // try to execute the query  
                                            updated = cmd.ExecuteNonQuery();
                                            // try to close the database connection
                                            // using() method will automatically dispose the connection Obj
                                            // but still as a safer side we will use the connection.Close() method 
                                            connection.Close();
                                        }

                                    }
                                }
                            }
                        }
                        catch (Exception error)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", "toastr.error(" + error + ")'Error')", true);
                            LblDatabaseError.Text = error.ToString();
                        }
                        break; 
                    default:
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", "toastr.error('Invalid File Format', 'Error')", true);
                        break;
                }

                //If the update was succeeded, refresh the Home Banner List 
                if (updated > 0)
                {
                    UpdateHomeBanner();
                }

            }
        }

        private void UpdateHomeBanner()
        {
            // need to reterive the info from database 
            string selectSQL = "SELECT * FROM home_banner";
            MySqlConnection connection = new MySqlConnection(Master.connectionString);
            MySqlCommand cmd = new MySqlCommand(selectSQL, connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);

            //Fill the DataSet 
            DataSet ds = new DataSet();
            adapter.Fill(ds, "home_banner");

            // Perform the binding .
            GridHomeBannerData.DataSource = ds;
            GridHomeBannerData.DataBind();
            //  Response.Redirect(Request.Url.AbsoluteUri);

        }

        //BLOB data is fetched from the GridView DataItem property and then its converted back 
        //to Byte array , Which is then converted to a BASE64 string and assigned to the imgUrl 
        //property
        protected void GridHomeBannerData_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["HomeImg"];
                string base64Srting = Convert.ToBase64String(bytes, 0, bytes.Length);
                (e.Row.FindControl("GridHomeBannerImg") as Image).ImageUrl = "data:image/png;base64," + base64Srting;
            }
        }
    }
}