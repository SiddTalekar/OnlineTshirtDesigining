using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace OnlineTshirtDesign.Account
{
    public partial class AdminOrder : System.Web.UI.Page
    {
        private string uploadDirectory;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void BtnAddHomeImg_Click(object sender, EventArgs e)
        {
            //Check that the file is actually being submitted 

            if (AdminUpload.PostedFile.FileName == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", "toastr.info('No file specified', 'Error')", true);
                AdminUpload.ToolTip = "NO file specified";
            }
            else
            {
                // Check the extension of the file 
                string fileExtension = Path.GetExtension(AdminUpload.PostedFile.FileName);

                switch (fileExtension.ToLower())
                {
                    case ".jpg":
                    case ".png":
                    case ".gif":
                        break;
                    default:
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", "toastr.error('Invalid File Format', 'Error')", true);
                        break;
                }
            }
        }
    }
}