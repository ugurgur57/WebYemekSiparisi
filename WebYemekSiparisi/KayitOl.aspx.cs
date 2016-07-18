using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebYemekSiparisi.DataModel;

namespace WebYemekSiparisi
{
    public partial class KayitOl : System.Web.UI.Page
    {
        yemeksiparisiEntities1 ent = new yemeksiparisiEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (cbxOkudum.Checked == false)
            {
                lblSonuc.Text = "Gizlilik Sözleşmesini okudum kısmını işaretlemelisiniz!";
            }
            else
            {
                if (EmailKontrol(txtEmail.Text))
                {
                    lblSonuc.Text = "Aynı mail adresi zaten kayıtlı!";
                    txtEmail.Focus();
                }
                else
                {
                    kullanici k = new kullanici();
                    k.kullaniciad = txtEmail.Text;
                    k.sifre = txtSifre.Text;
                    k.ad = txtAd.Text;
                    k.soyad = txtSoyad.Text;
                    k.tcno = txtKimlikNo.Text;
                    k.telefon = txtTelefon.Text;
                    k.adres = txtAdres.Text;
                    k.ilce = txtIlce.Text;
                    k.il = txtIl.Text;
                    ent.kullanici.Add(k);
                    try
                    {
                        ent.SaveChanges();
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Kayıt", "<script>alert('Üye kayıt işleminiz başarılı bir şekilde gerçekleşmiştir.');</script>");
                        //lblSonuc.Text = "Üye kayıt işleminiz başarılı bir şekilde gerçekleşmiştir.";
                        Session.Add("kullaniciadi", txtAd.Text);
                        Response.Redirect("Default.aspx");
                    }
                    catch (Exception ex)
                    {
                        string hata = ex.Message;
                    }
                }
            }
        }

        private bool EmailKontrol(string Email)
        {
            var kontrol = (from k in ent.kullanici
                           where k.kullaniciad == Email && k.silindi == false
                           select k).FirstOrDefault();

            if (kontrol != null) return true;
            return false;
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            pnlSozlesme.Visible = true;
            pnlKayit.Visible = false;
        }

        protected void cbxOkudum_CheckedChanged(object sender, EventArgs e)
        {
            pnlSozlesme.Visible = false;
            pnlKayit.Visible = true;
        }
    }
}