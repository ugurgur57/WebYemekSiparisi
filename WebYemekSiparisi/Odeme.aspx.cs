﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebYemekSiparisi
{
    public partial class Odeme : System.Web.UI.Page
    {
        DataModel.yemeksiparisiEntities1 ent = new DataModel.yemeksiparisiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["uye"] != null)
                {
                    string ad = Session["KullaniciAd"].ToString();
                    var Kullanici = (from user in ent.kullanici
                                     where user.kullaniciad == ad
                                     select user).FirstOrDefault();
                    lblAdi.Text = Kullanici.ad;
                    lblSoyadi.Text = Kullanici.soyad;
                    lblTutar.Text = string.Format("{0:C}", ToplamTutarBul());
                }
            }
        }
        private decimal ToplamTutarBul()
        {
            decimal ToplamTutar = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamTutar += Convert.ToDecimal(dr["tutar"]);
            }
            return ToplamTutar;
        }

        protected void btnHavaleEFT_Click(object sender, EventArgs e)
        {
            pnlBankaBilgileri.Visible = true;
        }

        protected void btnKrediKarti_Click(object sender, EventArgs e)
        {
            //KREDİ KARTI YAPMAMIŞLAR:...
        }

        protected void btnDevam_Click(object sender, EventArgs e)
        {
            Session.Remove("sepet");
            Response.Redirect("Default.aspx");
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
}