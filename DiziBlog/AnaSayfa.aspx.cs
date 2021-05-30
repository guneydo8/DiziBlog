using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DiziBlog
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlogDiziEntities db = new BlogDiziEntities();
            var veri = db.TblBlog.ToList();
            Repeater1.DataSource = veri;
            Repeater1.DataBind();
           

            var kategori = db.TblKategori.ToList();
            Repeater2.DataSource = kategori;
            Repeater2.DataBind();

            var sonveri = db.TblBlog.Take(5).OrderByDescending(x => x.Id).ToList();
            Repeater3.DataSource = sonveri;
            Repeater3.DataBind();

           


            var sonyrm = (from x in db.TblYorumlar.Take(5)
                         select new
                         {
                             x.AdSoyad,
                             x.Id,
                             x.Mail,
                             x.İçerik,
                             x.TblBlog.Başlık,
                         }).OrderByDescending(x => x.Id).ToList();
            Repeater4.DataSource = sonyrm;
            Repeater4.DataBind();

        }
    }
}