<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PastaTatli.aspx.cs" Inherits="WebYemekSiparisi.PastaTatli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-weight: bold; padding-top: 15px; padding-left: 20px; font-size: larger; border-bottom: 1px solid">
        Pasta ve Tatlı
    </div>
    <br />
    <br />
    <asp:DataList ID="dlstUrunler" runat="server" RepeatColumns="4" Width="625px" OnItemCommand="dlstUrunler_ItemCommand">
        <ItemTemplate>
            <div style="text-align: center">
                <asp:Label ID="lblUrunAdi" Width="120px" runat="server" Text='<%#Eval("urunad") %>'></asp:Label>
                <br />
                <br />
                <asp:ImageButton ID="imgResim1" runat="server" ImageUrl='<%#Eval("urunresimyolu1") %>' Width="120px" Height="120px" AlternateText='<%#Eval("urunad") %>' CommandName="detay" CommandArgument='<%#Eval("urunid") %>' /><br />
                <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("urunfiyat", "{0:C}") %>'></asp:Label>&nbsp;
                <asp:TextBox ID="txtAdet" runat="server" TextMode="Number" Width="26px" Text="1"></asp:TextBox><br />
                <asp:ImageButton ID="btnSepeteAt" ImageUrl="~/images/Materyal/sepeteekle.jpg" runat="server" Width="100px" Height="23px" CommandName="sepet" CommandArgument='<%#Eval("urunid") %>' />
            </div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
