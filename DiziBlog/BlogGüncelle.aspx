<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BlogGüncelle.aspx.cs" Inherits="DiziBlog.BlogGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-left:10px">
     <asp:Label ID="Label5" runat="server" Text="Başlık"></asp:Label>
     <asp:TextBox ID="txtbaslık" CssClass="form-control"  runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="Label1" runat="server" Text="Tür"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
    <br />
  <asp:Label ID="Label2" runat="server" Text="Kategori"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
    <br />
    <asp:Label ID="Label3" runat="server" Text="İçerik"></asp:Label>
    <asp:TextBox ID="txtiçerik" CssClass="form-control" TextMode="MultiLine" runat="server" Height="150"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Görsel Url"></asp:Label>
    <asp:TextBox ID="txtgörsel" CssClass="form-control"   TextMode="MultiLine" Height="80" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Güncelle" OnClick="Button1_Click" />
    </div>
    
</asp:Content>
