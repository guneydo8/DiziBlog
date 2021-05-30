using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class YorumListesi : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //    var liste = db.TblYorumlar.ToList();
            //    Repeater1.DataSource = liste;
            //    Repeater1.DataBind();

            if (Session["KullanıcıAd"] == null)
            {
                Response.Redirect("~/Login.Aspx");

            }

            var liste2 = (from x in db.TblYorumlar
                          select new
                          {
                              x.Id,
                              x.AdSoyad,
                              x.Mail,
                              x.İçerik,
                              x.TblBlog.Başlık,
                          }).ToList();
            Repeater1.DataSource = liste2;
            Repeater1.DataBind();



        }
    }
}