//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DiziBlog
{
    using System;
    using System.Collections.Generic;
    
    public partial class TblYorumlar
    {
        public int Id { get; set; }
        public string AdSoyad { get; set; }
        public string Mail { get; set; }
        public string İçerik { get; set; }
        public Nullable<int> Blog { get; set; }
    
        public virtual TblBlog TblBlog { get; set; }
    }
}