using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitFan();
    }

    protected void SubmitFan()
    {
        LoginServiceReference.ShowTrackerLoginServiceClient lsc = new LoginServiceReference.ShowTrackerLoginServiceClient();

        LoginServiceReference.FanLite fLite = new LoginServiceReference.FanLite();

        fLite.FanName = FanNameTextBox.Text;
        fLite.FanEmail = FanEmailTextBox.Text;
        fLite.FanLoginUserName = FanUserNameTextBox.Text;
        fLite.FanLoginPasswordPlain = ConfirmTextBox.Text;


        int result = lsc.FanRegistration(fLite);

        if (result != -1)
            ResultLabel.Text = "Succesfully registration";
        else
            ResultLabel.Text = "Registration Failed";

    }
}