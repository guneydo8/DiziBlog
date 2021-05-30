using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class AdminAnaSayfa : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["KullanıcıAd"]);


            if (Session["KullanıcıAd"] == null)
            {
                Response.Redirect("~/Login.Aspx");

            }
           

            var liste = (from x in db.TblBlog
                         select new
                         {
                             x.Id,
                             x.Başlık,
                             x.Tarih,
                             x.TblTürler.Tür,
                             x.TblKategori.Kategori,

                         }).ToList();
            Repeater1.DataSource = liste;
            Repeater1.DataBind();


           

        }
    }
}