using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class AdminHakkımızda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["KullanıcıAd"] == null)
            {
                Response.Redirect("~/Login.Aspx");

            }

            BlogDiziEntities db = new BlogDiziEntities();
            var liste = (from x in db.TblHakkımızda
                         select new
                         {
                             x.Açıklama,
                             x.Id
                         }).ToList();

            Repeater1.DataSource = liste;
            Repeater1.DataBind();
            
        }
    }
}