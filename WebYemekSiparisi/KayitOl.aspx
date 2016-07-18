<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="WebYemekSiparisi.KayitOl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="pnlKayit">
        <div class="kayit">
            <span style="font-weight: bold">Kayıt İşlemleri</span><br />
            <br />

            <table style="float: left">
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email formatına uygun değil" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Şifre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSifre" CssClass="text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şifre Boş Geçilemez" ControlToValidate="txtSifre">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Şifre Tekrar"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSifreTekrar" CssClass="text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Şifre Tekrar Boş Geçilemez" ControlToValidate="txtSifreTekrar">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Şifreler aynı değil" ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar">*</asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Adınız"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtAd" CssClass="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Adınız Boş Geçilemez" ControlToValidate="txtAd">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Soyadınız"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSoyad" CssClass="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Soyadınız Boş Geçilemez" ControlToValidate="txtSoyad">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Kimlik No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtKimlikNo" CssClass="text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Telefon"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtTelefon" TextMode="Phone" CssClass="text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="Adres"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtAdres" TextMode="MultiLine" CssClass="text" Height="77px" Width="211px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="İlçe"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtIlce" CssClass="text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="label" Text="İl"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtIl" CssClass="text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2">Gizlilik Sözleşmesi için <asp:LinkButton ID="lbtn" ForeColor="Blue" runat="server" OnClick="lbtn_Click">tıklayınız...</asp:LinkButton></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: center">
                        <asp:Button ID="btnKayit" runat="server" CssClass="btn" Text="Kaydet" OnClick="btnKayit_Click" />
                    </td>
                </tr>
                

            </table>
           <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlSozlesme" runat="server" Visible="false">
        <div class="kayit">
            <span style="font-weight:bold">Gizlik Sözleşmesi</span><br /><br />
            <asp:TextBox ID="txtSozlesme" TextMode="MultiLine" Width="500px" runat="server" Height="500px">Kişisel iletişim bilgileriniz

Web Sitesi üzerinden herhangi bir sipariş vermek için, adınızı, soyadınızı, ev ya da diğer fiziksel adresinizi (sokak adı, semt, il gibi bilgileri içerecek şekilde), telefon numaranızı ve diğer gerçek yaşam kişisel bilgilerinizi bizimle paylaşmanız gerekmektedir. Kişisel bilgilerinizin üzerinde değişiklik yapabilir, yanlışlıkları düzeltmek için gerekli düzenlemeleri kayıt olduktan sonra yapabilirsiniz. Eğer bizimle paylaştığınız detayları izlemek ya da değiştirmek isterseniz, kullanıcı ana sayfanızda bulunan “Üyelik Bilgilerim” linkine tıklayarak hesap detaylarınıza giriş yapabilirsiniz. Lokasyonunuza bağlı olarak birden fazla kayıtlı adresiniz olabilir. Kişisel bilgilerinizin bir kısmı (ad, soyad, siparişinizin gönderileceği kayıtlı adresiniz ve telefon numaranız) sipariş verdiğiniz restoran ile paylaşılmaktadır. Bu bilgiler aynı zamanda Web Sitesi’nin kullanımını geliştirmek, sizinle iletişim kurmak, şirket içi gereksinimler için ve hukuki açıdan gerekli olduğu durumlarda kullanılmaktadır. Bu bilgiler, çalışanlarımızla veya üçüncü partilerle siparişin iletilme aşamalarından herhangi birinde paylaşılabilir ya da Web Sitesi’ni kullanımınızın analizinde ve desteğinde kullanılabilir. İzniniz olmadan, gizlilik politikasında belirtilen kullanım alanları haricinde üçüncü partilerle bilgilerinizi paylaşmıyor ya da bilgilerinizi üçüncü partilere satmıyoruz.
E-posta adresiniz

Bir hesap oluşturmak için, bir e-posta adresinizin olması gerekmektedir. E-posta adresiniz sizinle online olarak iletişim kurmak, bir sipariş verdiğiniz zaman bu siparişi onaylamak, siparişinizle ilgili bir sorun olduğunda veya promosyonarla ilgili size bilgi vermek için kullanılmaktadır. E-posta adresinizi paylaşmadığınız durumda Web Sitesi’ne kayıt yaptıramaz ve sipariş veremezsiniz. Kişisel bilgilerinizin bir kısmı (ad, soyad, siparişinizin gönderileceği kayıtlı adresiniz ve telefon numaranız) sipariş verdiğiniz restoran ile paylaşılmaktadır. Bu bilgiler aynı zamanda Web Sitesi’nin kullanımını geliştirmek, sizinle iletişim kurmak, şirket içi gereksinimler için ve hukuki açıdan gerekli olduğu durumlarda kullanılmaktadır. Bu bilgiler, çalışanlarımızla veya üçüncü partilerle siparişinin iletilme aşamalarından herhangi birinde paylaşılabilir ya da Web Sitesi’ni kullanımınızın analizinde ve desteğinde kullanılabilir. İzniniz olmadan, gizlilik politikasında belirtilen kullanım alanları haricinde üçüncü partilerle bilgilerinizi paylaşmıyor ya da bilgilerinizi üçüncü partilere satmıyoruz.
Sipariş bilgileriniz

Siparişler ile ilgili ödeme şekli, sipariş detayları, sipariş tutarı, kullanılan indirim kuponları gibi bilgileri toplayabiliriz. Bu bilgiler Web Sitesi’nin kullanımını analiz etmek ve geliştirmek için kullanılmaktadır. Bu bilgiler, çalışanlarımızla veya ilgili üçüncü partilerle siparişinizin iletilme aşamalarından herhangi birinde paylaşılabilir ya da Web Sitesi’ni kullanımınızın analizinde ve desteğinde kullanılabilir.
Navigasyon ve tıklama bilgisi

Web Sitesi’nde dolaşırken, dolaştığınız sayfalara ve tıkladığınız buton ve bağlantılara ilişkin navigasyon ve tıklama bilgileri, ziyaret ettiğiniz sayfalar, bir sayfada kaldığınız süre, sipariş verme süreniz gibi bilgilere ulaşabilmek için tutulmaktadır. Bu bilgiler sizin kimliğinizi ortaya çıkarmaz ya da direk olarak şahsınızla ilişkilendirilmez. Bu bilgiler, Web Sitesi üzerinden verdiğiniz siparişlerin tamamlanması, analiz edilmesi ve geliştirilmesi, Web Sitesi’nin kullanımının artırılması, hukuki açıdan gerekli olan durumlarda bilgi sağlanması ve Web Sitesi ya da üçüncü partilere ait web siteleri üzerinde ilginizi çekebilecek kampanya, promosyon ve yönlendirmeler için kullanılmaktadır. Bu bilgiler, çalışanlarımız veya ilgili üçüncü partilerle siparişinin iletilme aşamalarından herhangi birinde paylaşılabilir ya da Web Sitesi’ni kullanımınızın analizinde ve desteğinde kullanılabilir.
Çerezler

Çerezler, Web Sitesi’ni ziyaret ettiğiniz zaman bilgisayarınıza tercihlerinizi kaydeden küçük metin dosyalarıdır. Çerezler, alışveriş sepetinizde hangi ürünlerin olduğunu hatırlamak, Web Sitesi’ne tekrar giriş yaptığınızda sitenin sizi tanıması, ilginizi çekebilecek ilan ve reklamların en çok giriş yaptığınız sayfalarda yayınlanması gibi işlemlerde size en kaliteli hizmeti sağlamak için kullanılmaktadır. Herhangi bir kişisel ya da özel bilgi içermezler. Bilgisayarınıza zarar vermezler. Web Sitesi üzerinden sipariş verebilmek için bu çerezlere izin vermeniz gerekir. Eğer isterseniz, daha sonra bu çerezleri bilgisayarınızdan silebilir ya da engelleyebilirsiniz. Çerezler hakkında bilmeniz gerekenler:
Kimliğinizi tanımlamak ve siteye giriş yaptıktan sonra ilgili ayarları muhafaza etmek için çerezler kullanabiliriz.
Çoğu çerez “oturum çerezi”dir, yani siz ziyaretinizi bitirdikten sonra bilgisayarınızdan silinir.
Internet tarayıcınız izin veriyorsa, çerezleri kabul etmeyebilirsiniz.
Web Sitesi üzerinde reklamları bulunan üçüncü partilerin çerezleri ile karşılaşabilirsiniz ancak bunlar bizim kontrolümüzde değildir.</asp:TextBox><br />
            <br />
            <asp:CheckBox ID="cbxOkudum" Text="Gizlilik Sözleşmesini Okudum" runat="server" AutoPostBack="True" OnCheckedChanged="cbxOkudum_CheckedChanged" />
        </div>
    </asp:Panel>

    <br />
    <div style="padding: 25px">
        <asp:Label Text="" ID="lblSonuc" runat="server" />
    </div>

</asp:Content>
