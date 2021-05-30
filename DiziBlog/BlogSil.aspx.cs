using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class BlogSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            BlogDiziEntities db = new BlogDiziEntities();
            var blog = db.TblBlog.Find(id);
            db.TblBlog.Remove(blog);
            db.SaveChanges();
            Response.Redirect("AdminAnaSayfa.Aspx");

        }
    }
}