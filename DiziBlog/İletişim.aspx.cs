using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class İletişim : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TblMesajlar mesaj = new TblMesajlar();
            mesaj.AdSoyad = txtadsoyad.Text;
            mesaj.Mail = txtmail.Text;
            mesaj.Konu = txtkonu.Text;
            mesaj.Telefon = txttelefon.Text;
            mesaj.Mesaj = txtmesaj.Text;
            db.TblMesajlar.Add(mesaj);
            db.SaveChanges();
            Response.Redirect("İletişim.Aspx");

        }
    }
}