<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriKısıt.aspx.cs" Inherits="DiziBlog.KategoriKısıt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="content">
        <div class="container">
            <div class="content-grids">
                <div class="col-md-8 content-main">

                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>

                            <div class="content-grid">
                                <div class="content-grid-info">
                                    <img src='<%# Eval("Görsel")  %>' alt="" style="height: 350px; width: 600px" />
                                    <div class="post-info">
                                        <h4><a href="Blogİçerik.Aspx?Id=<%# Eval("Id") %>"><%# Eval("Başlık") %></a>  <%# Eval("Tarih") %></h4>
                                        <p><%# Eval("İçerik") %></p>
                                        <a href="Blogİçerik.Aspx?Id= <%# Eval("Id") %>"><span></span>Daha Fazla</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <div class="col-md-4 content-right">
                    <div class="recent">
                        <h3>Son Eklenenler</h3>
                        <ul>
                            <asp:Repeater ID="Repeater3" runat="server">
                                <ItemTemplate>
                                    <li><a href="#"><%# Eval("Başlık") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="comments">
                        <h3>Son Yorumlar</h3>
                        <ul>
                            <asp:Repeater ID="Repeater4" runat="server">
                                <ItemTemplate>
                                    <li><a href="#"><%# Eval("AdSoyad") %>:<%# Eval("Başlık") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            
                           
                        </ul>
                    </div>
                   
                    <div class="categories">
                        <h3>Kategoriler</h3>
                        <ul>
                           
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li><a href="KategoriDetay.Aspx?Id=<%# Eval("Id") %>"><%# Eval("Kategori") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>


</asp:Content>
