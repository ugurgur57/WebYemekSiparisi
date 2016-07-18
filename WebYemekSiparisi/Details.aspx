<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebYemekSiparisi.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <br />
    <br />
    <asp:DataList ID="dlstUrunler" runat="server" RepeatColumns="1" Width="507px" OnItemCommand="dlstUrunler_ItemCommand">
        <ItemTemplate>
            <div style="text-align: center">
                <asp:Label ID="lblUrunAdi" runat="server" Text='<%#Eval("urunad") %>'></asp:Label><br />
                <asp:ImageButton ID="imgResim1" runat="server" ImageUrl='<%#Eval("urunresimyolu2") %>' Width="400px" Height="400px" AlternateText='<%#Eval("urunad") %>' /><br />
                <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("urunfiyat", "{0:C}") %>'></asp:Label>&nbsp;
                <asp:TextBox ID="txtAdet" runat="server" TextMode="Number" Width="26px" Text="1"></asp:TextBox><br /><br />
                <asp:Label ID="lblUrunBilgisi" runat="server" Text='<%#Eval("urunbilgisi") %>'></asp:Label><br /><br />
                <asp:ImageButton ID="btnSepeteAt" ImageUrl="~/images/Materyal/sepeteekle.jpg" runat="server" Width="100px" Height="23px" CommandName="sepet" CommandArgument='<%#Eval("urunid") %>' /><br /><br />
                
            </div>
               
        </ItemTemplate>
    </asp:DataList>
        </center>
</asp:Content>
