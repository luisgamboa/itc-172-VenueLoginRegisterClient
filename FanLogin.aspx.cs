using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FanLoginButton_Click(object sender, EventArgs e)
    {
        LoginFan();
    }
    protected void LoginFan()
    {
        LoginServiceReference.ShowTrackerLoginServiceClient lsr =
            new LoginServiceReference.ShowTrackerLoginServiceClient();
        int key = lsr.FanLogin(FanPasswordTextBox.Text, FanUserNameTextBox.Text);
        if (key != -1)
        {

            Session["userKey"] = key;
            Response.Redirect("ViewShows.aspx");


            ErrorLabel.Text = "Succesfully registration";
        }
        else
        {
            ErrorLabel.Text = "Login Failed";
        }
    }
}