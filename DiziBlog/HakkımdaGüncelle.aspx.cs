using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class HakkımdaGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                BlogDiziEntities db = new BlogDiziEntities();
                int id = Convert.ToInt32(Request.QueryString["Id"]);
                var sec = db.TblHakkımızda.Find(id);
                TextBox1.Text = sec.Açıklama;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BlogDiziEntities db = new BlogDiziEntities();
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            var güncelle = db.TblHakkımızda.Find(id);
            güncelle.Açıklama = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("AdminHakkımızda.Aspx");
        }
    }
}