using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DiziBlog
{
    public partial class Hakkımda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlogDiziEntities db = new BlogDiziEntities();



            var hakkımızda = db.TblHakkımızda.ToList();
            Repeater1.DataSource = hakkımızda;
            Repeater1.DataBind();

        }
    }
}