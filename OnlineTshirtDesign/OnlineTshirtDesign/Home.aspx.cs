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
    public partial class Home : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            // If this page is being viewed 1st time in the browser 

            if (this.IsPostBack == false)
            {
                FillHomeBanner();
            }
        }

        // to fill homebanner content directly from database
        private void FillHomeBanner()
        {
            // Define Ado.Net object
             
            MySqlConnection myConnection = new MySqlConnection(Master.connectionString);
        }

    }
}