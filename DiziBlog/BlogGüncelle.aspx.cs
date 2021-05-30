using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class BlogGüncelle : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                var tür = (from x in db.TblTürler
                           select new
                           {
                               x.Tür,
                               x.Id,
                           }).ToList();
                DropDownList1.DataTextField = "Tür";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataSource = tür;
                DropDownList1.DataBind();

                var kategori = (from x in db.TblKategori
                                select new
                                {
                                    x.Kategori,
                                    x.Id,
                                }).ToList();
                DropDownList2.DataTextField = "Kategori";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataSource = kategori;
                DropDownList2.DataBind();

                int sec = Convert.ToInt32(Request.QueryString["Id"]);

                var güncelle = db.TblBlog.Find(sec);
                txtbaslık.Text = güncelle.Başlık;
                txtgörsel.Text = güncelle.Görsel;
                txtiçerik.Text = güncelle.İçerik;
                DropDownList1.SelectedValue = güncelle.Tür.ToString();
                DropDownList2.SelectedValue = güncelle.Kategori.ToString();

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int gnc = Convert.ToInt32(Request.QueryString["Id"]);
            var güncelle = db.TblBlog.Find(gnc);
            güncelle.Başlık = txtbaslık.Text;
            güncelle.Görsel = txtgörsel.Text;
            güncelle.İçerik = txtiçerik.Text;
            güncelle.Kategori =Convert.ToInt32(DropDownList2.SelectedValue);
            
            güncelle.Tür = Convert.ToInt32(DropDownList1.SelectedValue);
            db.SaveChanges();
            Response.Redirect("AdminAnaSayfa.Aspx");
        }
    }
}