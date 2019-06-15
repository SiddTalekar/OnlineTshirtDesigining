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
    public partial class OnlineDesigining : System.Web.UI.MasterPage
    {
        // This is the Database connection string for database connectivity
        // Will use in the entire webpage 

       public string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OnlineTshirtDesigning"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            //ButtonLogin.Attributes.Add("data-toggle", "modal");
            //ButtonLogin.Attributes.Add("data-target", "#LoginModal");

        }
    }
}