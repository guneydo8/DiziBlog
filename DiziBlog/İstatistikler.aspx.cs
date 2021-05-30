using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlogDiziEntities db = new BlogDiziEntities();
            if (Session["KullanıcıAd"] == null)
            {
                Response.Redirect("~/Login.Aspx");

            }


            Label1.Text = db.TblBlog.Count().ToString();
            Label2.Text = db.TblYorumlar.Count().ToString();
            Label3.Text = db.TblBlog.Where(x => x.Tür == 2).Count().ToString();
            Label4.Text = db.TblBlog.Where(x => x.Tür == 1).Count().ToString();
            Label5.Text = db.TblBlog.Where(x => x.TblTürler.Tür == "Belgesel").Count().ToString();
            Label6.Text = db.TblBlog.Where(t => t.Id == (db.TblYorumlar.GroupBy(x => x.Blog).OrderByDescending(y => y.Count()).Select(y => y.Key).FirstOrDefault())).Select(k => k.Başlık).FirstOrDefault();
            Label7.Text = db.TblKategori.Count().ToString();
            Label8.Text = db.TblTürler.Count().ToString();
            Label9.Text = db.TblMesajlar.Count().ToString();
            Label10.Text = db.TblKategori.Where(x => x.Id == (db.TblBlog.GroupBy(y => y.Kategori).OrderByDescending(z => z.Count()).Select(k => k.Key).FirstOrDefault())).Select(t => t.Kategori).FirstOrDefault();
            

        }
    }
}