using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebYemekSiparisi
{
    public partial class Adres : System.Web.UI.Page
    {
        DataModel.yemeksiparisiEntities1 ent = new DataModel.yemeksiparisiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciad"] != null)
            {
                string ad = Session["kullaniciad"].ToString();
                var kullanici = (from k in ent.kullanici
                                 where k.kullaniciad == ad
                                 select k).FirstOrDefault();
                pnlAdres.Visible = true;
                txtAdres.Text = kullanici.adres;
                txtIlce.Text = kullanici.ilce;
                txtIl.Text = kullanici.il;
                txtTelefon.Text = kullanici.telefon;
                txtAdres.Focus();
            }
            else
            {
                Response.Redirect("KayitOl.aspx");
            }


        }

        protected void btnAdresOnay_Click(object sender, EventArgs e)
        {
            if (txtAdres.Text.Trim() != "")
            {
                string ad = Session["kullaniciad"].ToString();
                var degisen = (from user in ent.kullanici
                               where user.kullaniciad == ad
                               select user).FirstOrDefault();
                degisen.adres = txtAdres.Text;
                degisen.ilce = txtIlce.Text;
                degisen.il = txtIl.Text;
                degisen.telefon = txtTelefon.Text;
                try
                {
                    ent.SaveChanges();
                    lblMesaj.Text = "Adres bilgileriniz güncellendi.";
                    DataModel.satislar satis = new DataModel.satislar();
 
                    satis.kullanicino = Convert.ToInt32(Session["uye"]);
                    satis.tarih = DateTime.Now;
                    satis.teslimtarihi = DateTime.Now;
                    satis.tutar = ToplamTutarBul();
                    satis.miktar = ToplamAdetBul();
                    satis.durumu = (byte)Models.cEnum.SatisDurumu.siparis;
                    ent.satislar.Add(satis);
                    ent.SaveChanges();
                    DataModel.satisdetaylari detay = new DataModel.satisdetaylari();
                    //detay.satisno = satis.satisno;
                    int SonSatisNo = ent.satislar.Where(s => s.kullanicino == satis.kullanicino).ToList().Last().satisno;
                    DataTable dt = (DataTable)Session["sepet"];
                    foreach (DataRow urun in dt.Rows)
                    {
                        detay.satisno = SonSatisNo;
                        detay.urunid = Convert.ToInt32(urun["urunID"]);
                        detay.adet = Convert.ToInt32(urun["adet"]);
                        detay.birimfiyat = Convert.ToDecimal(urun["fiyat"]);
                        detay.tutar = Convert.ToDecimal(urun["tutar"]);
                        ent.satisdetaylari.Add(detay);
                        ent.SaveChanges();
                    }
                    Response.Redirect("Odeme.aspx");
                
                }
                catch (Exception ex)
                {
                    string hata = ex.Message;
                }
            }

        }
        private int ToplamAdetBul()
        {
            int ToplamAdet = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamAdet += Convert.ToInt32(dr["adet"]);
            }
            return ToplamAdet;
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
    }
}