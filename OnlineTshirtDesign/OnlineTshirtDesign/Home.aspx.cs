﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using System.Data.OleDb;

namespace OnlineTshirtDesign
{
    public partial class Home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            // If this page is being viewed 1st time in the browser 
           
            FillHomeBanner();
        
        }

        // to fill homebanner content directly from database
        private void FillHomeBanner()
        {
            // Define Ado.Net object

            string selectSQL = "SELECT * FROM home_banner";
            DataTable dt = new DataTable();
            MySqlConnection connection = new MySqlConnection(Master.connectionString);
            MySqlCommand cmd = new MySqlCommand(selectSQL, connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);

            try
            {
                using (connection)
                {
                    // Open database connection 
                    connection.Open();
                    // Fill the Data to DataAdaptor
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        RepeatHomeBannerData.DataSource = dt;
                        RepeatHomeBannerData.DataBind();
                    }
                }
            }
            catch (Exception error)
            {

                LblDatabaseError.Text = error.ToString();
            }
        }

        protected void RepeatHomeBannerData_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            byte[] bytes = (byte[])(e.Item.DataItem as DataRowView)["HomeImg"];
            string base64Srting = Convert.ToBase64String(bytes, 0, bytes.Length);
            (e.Item.FindControl("SliderHomeBannerImg") as Image).ImageUrl = "data:image/png;base64," + base64Srting;
        }
    }
}