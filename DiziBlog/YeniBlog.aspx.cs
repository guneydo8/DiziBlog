using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziBlog
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var tür = (from x in db.TblTürler
                           select new
                           {
                               x.Id,
                               x.Tür,
                           }).ToList();


                DropDownList1.DataValueField = "Id";
                DropDownList1.DataTextField = "Tür";
                DropDownList1.DataSource = tür;
                DropDownList1.DataBind();


                var kategori = (from x in db.TblKategori
                                select new
                                {
                                    x.Id,
                                    x.Kategori,
                                }).ToList();

                DropDownList2.DataTextField = "Kategori";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataSource = kategori;
                DropDownList2.DataBind();
            }


        }

        BlogDiziEntities db = new BlogDiziEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TblBlog blog = new TblBlog();
            blog.Başlık = txtbaslık.Text;
            blog.Görsel = txtgörsel.Text;
            blog.Kategori = Convert.ToInt32(DropDownList2.SelectedValue);
            blog.Tür = Convert.ToInt32(DropDownList1.SelectedValue);
            blog.İçerik = txtiçerik.Text;
            blog.Tarih = DateTime.Now;



            db.TblBlog.Add(blog);
            db.SaveChanges();
            Response.Redirect("AdminAnaSayfa.Aspx");


        }
    }
}