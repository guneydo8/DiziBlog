<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAnaSayfa.aspx.cs" Inherits="DiziBlog.AdminAnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>EKLENİŞ TARİHİ</th>
            
            <th>TÜR</th>
            <th>KATEGORİ</th>
            <th>İŞLEMLER</th>


        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Id") %></td>
                    <td><%# Eval("Başlık") %></td>
                    <td><%# Eval("Tarih") %></td>
                   
                    <td><%# Eval("Tür") %></td>
                    <td><%# Eval("Kategori") %></td>
                    <td>
                       
                        <asp:HyperLink  CssClass="btn btn-primary" ID="HyperLink1" runat="server" NavigateUrl='<%# "BlogGüncelle.Aspx?Id="+ Eval("Id") %>'>Güncelle</asp:HyperLink>
                        <asp:HyperLink  CssClass="btn btn-danger" ID="HyperLink2" runat="server" NavigateUrl='<%# "BlogSil.Aspx?Id="+ Eval("Id") %>'>Sil</asp:HyperLink>
                      
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>


    </table>

    <a href="YeniBlog.Aspx" class="btn btn-info">Dizi/Film Ekle</a>



</asp:Content>
