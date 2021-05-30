using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BlogDiziEntities db = new BlogDiziEntities();

            var giriş = from x in db.TblAdmin
                         where x.KullanıcıAd == TextBox1.Text && x.Şifre == TextBox2.Text
                         select x;
            Session.Add("KullanıcıAd", TextBox1.Text);
            if (giriş.Any())
            {
                
                Response.Redirect("AdminAnaSayfa.Aspx");
               
            }
            else
            {
                Response.Write("Hatalı Kullanıcı Adı Veya Şifre");
            }
        }
    }
}