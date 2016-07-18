using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebYemekSiparisi
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["kullaniciadi"];
            if (kullanici!=null)
            {
                pnlGiris.Visible = false;
                pnlKullaniciAdi.Visible = true;
                lblad.Text = kullanici.ToString();
            }
            else
            {
                pnlKullaniciAdi.Visible = false;
                pnlGiris.Visible = true;
            }
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("KayitOl.aspx");
        }
        SqlConnection conn = new SqlConnection("Data Source = HP; Initial Catalog = yemeksiparisi; uid=sa; pwd=123458");
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text.Trim()!="" && txtSifre.Text.Trim()!="" )
            {
                SqlCommand comm = new SqlCommand("Select * from kullanici where kullaniciad=@ad and sifre=@sifre", conn);
                comm.Parameters.AddWithValue("@ad", txtKullaniciAdi.Text);
                comm.Parameters.AddWithValue("@sifre", txtSifre.Text);
                conn.Open();
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    Session.Timeout = 300;
                    Session.Add("kullaniciadi", dr["ad"]);
                    Response.Redirect(Request.RawUrl);
                }
                else { lblSonuc.Text = "Kullanici girişi sağlanamadı!"; }
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }

        protected void btnArama_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Arama.aspx?urunad="+txtArama.Text);
        }
    }
}