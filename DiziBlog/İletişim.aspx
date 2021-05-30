<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="İletişim.aspx.cs" Inherits="DiziBlog.İletişim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



				

<div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>İLETİŞİM</h2>
			 <p>Dilek Öneri Ve Şikayetlerinizi Mesaj Olarak Bize Bildirebilirsiniz</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
                 <asp:TextBox ID="txtadsoyad" placeholder="Ad Soyad..." runat="server" required=""></asp:TextBox>
				   <asp:TextBox ID="txtmail" placeholder="Mail Adresi..." runat="server" required=""></asp:TextBox>
				   <asp:TextBox ID="txttelefon" placeholder="Telefon..." runat="server" required=""></asp:TextBox>
				   <asp:TextBox ID="txtkonu" placeholder="Konu..." runat="server" required=""></asp:TextBox>
				   <asp:TextBox ID="txtmesaj" placeholder="Mesaj İçeriği..." TextMode="MultiLine" runat="server" required=""></asp:TextBox>
				 
                 <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
				  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>BURADAYIZ</h4>
				 <div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=Ankara &amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://embedgooglemap.xyz/"></a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>
			  </div>
			
			  <div class="clearfix"></div>
	     </div>		 
			 </form>
		  </div>
			 </div>

	 </div>



</asp:Content>
