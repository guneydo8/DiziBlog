<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="DiziBlog.YeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:TextBox ID="txtbaslık" CssClass="form-control" placeholder="Film/Dizi Adını Giriniz..." runat="server"></asp:TextBox>
    <br />

   
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
    <br />
  
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
    <br />
    <asp:TextBox ID="txtiçerik" CssClass="form-control" placeholder="İçerik Giriniz..." TextMode="MultiLine" runat="server" Height="150"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtgörsel" CssClass="form-control" placeholder="Görsel Url..."  TextMode="MultiLine" Height="80" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Ekle" OnClick="Button1_Click" />


</asp:Content>
