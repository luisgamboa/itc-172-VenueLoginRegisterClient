using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] != null)
        { }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitShow();
    }

    protected void SubmitShow()
    {


        LoginServiceReference.ShowTrackerLoginServiceClient lsc = new LoginServiceReference.ShowTrackerLoginServiceClient();
        LoginServiceReference.ShowLite sl = new LoginServiceReference.ShowLite();

        sl.ShowName = ShowNameTextBox.Text;
       
        sl.ShowDate = DateTime.Parse(ShowDateCalendar.SelectedDate.ToShortDateString());
        sl.ShowTime = TimeSpan.Parse(TimeTextBox.Text.ToString());
        sl.ShowTicket = TicketsTextBox.Text;

        lsc.AddShow(sl);

        //ResultLabel1.Text = "The show has been saved";

        int result = lsc.AddShow(sl);

        if (result != -1)
            ResultLabel1.Text = "Succesfully registration";
        else
            ResultLabel1.Text = "Registration Failed";

    }

}