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

        // This prperty will set the visiblity of header control
        // When in the admin page for admin own navigation 

        public bool HeaderVisibility {

            get
            {
                return HeaderPanel.Visible;
            }
            set
            {
                HeaderPanel.Visible = value;
            }

        }

        public bool AdminHeaderVisibility
        {

            get
            {
                return AdminHeaderPanel.Visible;
            }
            set
            {
                AdminHeaderPanel.Visible = value;
            }

        }

        public bool FooterVisibility
        {

            get
            {
                return FooterPanel.Visible;
            }
            set
            {
                FooterPanel.Visible = value;
            }

        }
    }
}