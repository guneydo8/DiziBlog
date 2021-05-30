<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="DiziBlog.İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <!DOCTYPE html>
    <html lang="zxx">
    <head>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
               function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme -->
        <link href="/web3/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web3/css/component.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web3/css/export.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web3/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web3/css/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- font-awesome-icons -->
        <link href="/web3/css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>
    <body>
        <!-- banner -->
        <div class="clearfix"></div>

        <ul class="ca-menu">
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub">Toplam İçerik Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-comment" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub one">Toplam Yorum Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-tv" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main two">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub two">Film Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-cloud" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main three">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub three">Dizi Sayısı</h3>
                    </div>
                </a>
            </li>

        </ul>

        <ul class="ca-menu">
            <li>
                <a href="#">
                    <i class="fa fa-css3" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub four">Belgesel Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-area-chart" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub ">En Fazla Yorum Alan İçerik</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-calculator" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub one">Toplam Kategori Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-amazon" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub two">Toplam Tür Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-mail-reply" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub three">Toplam Mesaj Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-arrows" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub four">En Fazla İçeriğe Sahip Kategori</h3>
                    </div>
                </a>
            </li>


        </ul>
    </body>
    </html>

</asp:Content>
