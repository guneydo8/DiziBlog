using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class Blogİçerik : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            var detay = db.TblBlog.Where(x => x.Id == id).ToList();
            Repeater1.DataSource = detay;
            Repeater1.DataBind();

            var yorum = db.TblYorumlar.Where(x => x.Blog == id).ToList();
            Repeater2.DataSource = yorum;
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            TblYorumlar yorumyap = new TblYorumlar();
            yorumyap.AdSoyad = TextBox1.Text;
            yorumyap.Mail = TextBox2.Text;
            yorumyap.İçerik = TextBox3.Text;
            yorumyap.Blog = id;
            db.TblYorumlar.Add(yorumyap);
            db.SaveChanges();
            Response.Redirect("Blogİçerik.Aspx?Id="+id);
            

        }
    }
}