using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Registration successful for " + Server.HtmlEncode(txtName.Text) + ".";
                // Clear inputs after successful registration
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtContact.Text = string.Empty;
                ddlEvent.SelectedIndex = 0;
            }
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}