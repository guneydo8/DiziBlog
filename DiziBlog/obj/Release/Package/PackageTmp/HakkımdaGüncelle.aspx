<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımdaGüncelle.aspx.cs" Inherits="DiziBlog.HakkımdaGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="Label1" runat="server" Text="Hakkımda"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" Height="500"></asp:TextBox>
    </div>
    <br />


    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Güncelle" OnClick="Button1_Click" />

</asp:Content>
