using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTshirtDesign
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegValidEmail_Init(object sender, EventArgs e)
        {
            RegValidEmail.Attributes.Add("data-toggle", "popover");
            RegValidEmail.Attributes.Add("data-content", "popover");

        }

        protected void ButtonUserLogIn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false) return;
            Label1.Text = "Click executed";
        }

        protected void ButtonSignUpForm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false || CheckboxDataAgree.Checked == false) return;
            LabelAggreeMsg.Text = "click executed";
        }
    }
}