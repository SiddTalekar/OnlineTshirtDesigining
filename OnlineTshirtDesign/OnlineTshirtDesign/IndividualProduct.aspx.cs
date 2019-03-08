using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTshirtDesign
{
    public partial class IndividualProduct : System.Web.UI.Page
    {
        private string[] colorArray = new string[] { "white", "black", "gray" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                // add aavailable colors list in radio list

                for (int i = 0; i < colorArray.Length; i++)
                {
                    //   RadBtnLstAvailColr.Items.Add(new ListItem("", colorArray[i]));
                    Label lb = new Label();
                    lb.Text = colorArray[i];
                    ChkBoxLstProductColr.Controls.Add(lb);
                 //   ChkBoxLstProductColr.Items.Add(lb);

                }
            }
        }
    }
}