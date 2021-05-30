<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajListesi.aspx.cs" Inherits="DiziBlog.MesajListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <table class="table table-bordered">
        <tr>
            <th>AD SOYAD</th>
            <th>MAİL</th>
            <th>TELEFON</th>
            <th>KONU</th>
            <th>İÇERİK</th>
            <th>İŞLEMLER</th>

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("AdSoyad") %></td>
                    <td><%# Eval("Mail") %></td>
                    <td><%# Eval("Telefon") %></td>
                    <td><%# Eval("Konu") %></td>
                    <td><%# Eval("Mesaj") %></td>

                    <td>
                        <asp:HyperLink NavigateUrl='<%# "MesajSil.Aspx?Id="+ Eval("Id") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>



    </table>

</asp:Content>
