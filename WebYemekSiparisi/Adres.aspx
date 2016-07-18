<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adres.aspx.cs" Inherits="WebYemekSiparisi.Adres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlAdres" runat="server" Visible="false">
        <table style="text-align:left">
            <tr>
                <td style="width:120px">
                    <asp:Label ID="Label3" runat="server" Text="Teslim Adresi"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAdres" runat="server" TextMode="MultiLine" Width="199px" Height="77px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="İlçe"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtIlce" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="İl"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtIl" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Telefon"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefon" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <asp:Label ID="lblMesaj" runat="server" Text=""></asp:Label>
            </tr>
            <tr>
                <td></td>
                <td style="text-align:center">
                    <asp:Button ID="btnAdresOnay" runat="server" CssClass="btn" Text="Adres Onay" Width="85px" OnClick="btnAdresOnay_Click" ValidationGroup="2" />
                </td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>
