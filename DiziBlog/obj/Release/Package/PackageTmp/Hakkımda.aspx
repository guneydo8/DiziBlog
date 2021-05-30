<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkımda.aspx.cs" Inherits="DiziBlog.Hakkımda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




<!--/header-->
<div class="about-content">
	 <div class="container">
		 <h2>HAKKIMIZDA</h2>
		 <div class="about-section">
			 <div class="about-grid">
                 <asp:Repeater ID="Repeater1" runat="server">
					 <ItemTemplate>
						 <p><%# Eval("Açıklama") %></p>
					 </ItemTemplate>
                 </asp:Repeater>

			 </div>
			
			
		  </div>		 
	  </div>
</div>

<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2021 Blog Tüm Hakları Saklıdır<a href="http://w3layouts.com/">W3layouts</a></p>
	 </div>
</div>
	

	


</asp:Content>
