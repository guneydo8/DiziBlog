using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class MesajSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlogDiziEntities db = new BlogDiziEntities();
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            var sil = db.TblMesajlar.Find(id);
            db.TblMesajlar.Remove(sil);
            db.SaveChanges();
            Response.Redirect("MesajListesi.Aspx");

        }
    }
}