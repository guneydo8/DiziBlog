using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class YorumSil : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            var sil = db.TblYorumlar.Find(id);
            db.TblYorumlar.Remove(sil);
            db.SaveChanges();
            Response.Redirect("YorumListesi.Aspx");
            

        }
    }
}