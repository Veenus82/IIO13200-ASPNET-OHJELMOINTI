﻿using System;
using System.Data; // ADO.Netin data-perusluokat
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaeOppilaatIlta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGet3_Click(object sender, EventArgs e)
    {
        // haetaan valmiilta luokan metodilta dataa ja kniinnitetään se kontrolliin
        DataTable dt = JAMK.ICT.Data.DBPlacebo.Get3TestStudents();
        gvStudents.DataSource = dt;
        gvStudents.DataBind();
    }

    protected void btnGetAll_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Oppilaat"].ConnectionString;
        string message = "";
        try
        {
            DataTable dt = JAMK.ICT.Data.DBPlacebo.GetAllStudentsFromSQLServer(cs, "oppilaat", out message);
            gvStudents.DataSource = dt;
            gvStudents.DataBind();
        }
        catch (Exception ex)
        {

            //mihin poikkeus message kirjoitetaan, lisää UIhin joku elementti
            lblMessages.Text = ex.Message;
        }
    }

    protected void btnGet4_Click(object sender, EventArgs e)
    {
        // haetaan valmiista businesslogiikasta oppilas-oliota ja kiinnitetään ne kontrollin datasourceksi
        var oppilaat = new JAMK.ICT.BL.Oppilaat().Hae3TestiOppilasta();
        gvStudents.DataSource = oppilaat;
        gvStudents.DataBind();
    }
}