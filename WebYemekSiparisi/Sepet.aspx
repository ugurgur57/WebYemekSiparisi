<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="WebYemekSiparisi.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    
    <asp:GridView ID="gvSepet" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sepetID" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="599px"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="urunad" HeaderText="Ürün Adı" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="fiyat" HeaderText="Fiyat" >
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="adet" HeaderText="Adet" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="tutar" HeaderText="Tutar" >
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:CommandField DeleteText="sil" ShowDeleteButton="True" >
            <ItemStyle HorizontalAlign="Center" Width="30px" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <EmptyDataTemplate>Sepetinizde ürün bulunmamaktadır.</EmptyDataTemplate>
    </asp:GridView>     
    <br /><br />
        <div class="odeme">
        <asp:Button ID="btnBosalt" CssClass="btn" runat="server" Text="Sepeti Boşalt" OnClick="btnSepetiBosalt_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDevam" runat="server" CssClass="btn" Text="Alışverişe Devam" OnClick="btnDevam_Click" ></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSatınAl" runat="server" CssClass="btn" Text="Satın Al" OnClick="btnSatinAl_Click"></asp:Button>
        <br /><br />
        </div>
        </center>
</asp:Content>
