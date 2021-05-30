<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkımızda.aspx.cs" Inherits="DiziBlog.AdminHakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>AÇIKLAMA</th>
           
            <th>İŞLEMLER</th>

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Id") %></td>
                    <td><%# Eval("Açıklama") %></td>
                   
                    <td>
                        <asp:HyperLink NavigateUrl='<%# "HakkımdaGüncelle.Aspx?Id="+ Eval("Id") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>



    </table>

      

</asp:Content>
