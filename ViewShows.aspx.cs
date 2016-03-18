using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewShows : System.Web.UI.Page
{
    LoginServiceReference.ShowTrackerLoginServiceClient db
          = new LoginServiceReference.ShowTrackerLoginServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDropDownArtist();
            LoadDropDownVenue();
        }

    }
    protected void DropDownListArtist_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGridbyArtist();
    }


    protected void DropDownListVenue_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGridbyVenue();
    }

    protected void LoadDropDownArtist()
    {
        string[] artists = db.GetArtists();
        DropDownListArtist.DataSource = artists;
        DropDownListArtist.DataBind();
        DropDownListArtist.Items.Add("Choose an Artist");
        DropDownListArtist.Items.Insert(0, "Choose an Artist");
    }



    protected void LoadDropDownVenue()
    {
        string[] venues = db.GetVenue();
        DropDownListVenue.DataSource = venues;
        DropDownListVenue.DataBind();
        DropDownListVenue.Items.Add("Choose a Venue");
        DropDownListVenue.Items.Insert(0, "Choose a Venue");
    }


    protected void FillGridbyArtist()
    {
        string artist = DropDownListArtist.SelectedItem.Text;
        LoginServiceReference.ArtistShows[] shows = db.GetShowsByArtist(artist);
        GridViewArtistandVennue.DataSource = shows;
        GridViewArtistandVennue.DataBind();

    }

    protected void FillGridbyShow()
    {


    }

    protected void FillGridbyVenue()
    {
        string venue = DropDownListVenue.SelectedItem.Text;
        LoginServiceReference.VenueShow[] shows = db.GetShowsByVenue(venue);
        GridViewArtistandVennue.DataSource = shows;
        GridViewArtistandVennue.DataBind();

    }
}