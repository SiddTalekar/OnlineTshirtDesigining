using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.OleDb;
using System.Text;


namespace OnlineTshirtDesign.App_Code
{
    public class Shopping
    {
        protected int sessionId;
        protected string emailId;
        private string pwd;
        protected string name;
        protected double price;
        protected ushort sizeQuantity;
        protected int productId;
        public string orderTime;
        public ushort productInialCountl = 1; // to set the oroduct intial count  

        // Member methods 
        public string GetPwd
        {
            get
            {
                return pwd;
            }
            set
            {
                pwd = value;
            }
        }

        public bool Login()
        {

        }

    }
}