<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Odeme.aspx.cs" Inherits="WebYemekSiparisi.Odeme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
        <img src="Content/style/images/odeme2.jpg" />
        <br /><br />
        <table style="text-align:left; width:370px">
            <tr>
                <td style="width:120px"><asp:Label ID="Label1" runat="server" Text="Adı"></asp:Label></td>
                <td><asp:Label ID="lblAdi" runat="server" ></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Soyadı"></asp:Label></td>
                <td><asp:Label ID="lblSoyadi" runat="server" ></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Alışveriş Tutarı"></asp:Label></td>
                <td><asp:Label ID="lblTutar" runat="server" ></asp:Label></td>
            </tr>
            <tr><td></td><td></td></tr>
            <tr>
                <td><asp:Button ID="btnHavaleEFT" CssClass="bluebutton" runat="server" Text="Havale/EFT" Width="106px" OnClick="btnHavaleEFT_Click" /></td>
                <td style="text-align:right">
                    <asp:Button ID="btnKrediKarti" CssClass="bluebutton" runat="server" Text="Kredi Kartı" Width="106px" OnClick="btnKrediKarti_Click" />
                </td>
            </tr>
        </table>
        <asp:Panel ID="pnlBankaBilgileri" runat="server" Visible="false">
        <table style="text-align:left; width:370px">
            <tr>
                <td style="width:120px"><asp:Label ID="Label4" runat="server" Text="Firma Ünvan"></asp:Label></td>
                <td>Yemek Satış AŞ</td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Banka"></asp:Label></td>
                <td>Yapı Kredi.</td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="Şube"></asp:Label></td>
                <td>Taksim</td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Hesap No"></asp:Label></td>
                <td>17010485</td>
            </tr>
            <tr>
                <td><asp:Label ID="Label11" runat="server" Text="IBAN NO"></asp:Label></td>
                <td>TR0258963147893699636</td>
            </tr>
            <tr><td></td><td></td></tr>
            <tr>
                <td><asp:Button ID="btnDevam" CssClass="bluebutton" runat="server" Text="Alışverişe Devam" Width="106px" OnClick="btnDevam_Click" /></td>
                <td style="text-align:right">
                    <asp:Button ID="btnCikis" CssClass="bluebutton" runat="server" Text="Güvenli Çıkış" Width="106px" OnClick="btnCikis_Click" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
</asp:Content>
