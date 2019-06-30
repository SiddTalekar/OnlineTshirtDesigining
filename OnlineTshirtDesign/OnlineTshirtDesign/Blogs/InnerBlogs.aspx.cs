using System;
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
    public partial class InnerBlogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "You requested " + (string)Page.RouteData.Values["BlogsId"];
            GetUserDetls();
        }

        private void GetUserDetls()
        {
            // Define Ado.Net object

            string selectSQL = "SELECT InnerBlogsId, InnerBlogsImg, InnerBlogsName, InnerBlogsDesc FROM inner_blogs WHERE InnerBlogsId=@InnerBlogsId";
            DataTable dt = new DataTable();
            MySqlConnection connection = new MySqlConnection(Master.connectionString);
            MySqlCommand cmd = new MySqlCommand(selectSQL, connection);

            //Add the parameters
            cmd.Parameters.AddWithValue("@InnerBlogsId", Page.RouteData.Values["BlogsId"]);

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
                        RepeatInnerBlogs.DataSource = dt;
                        RepeatInnerBlogs.DataBind();
                    }
                }
            }
            catch (Exception error)
            {

                LblDatabaseError.Text = error.ToString();
            }
        }
    }
}