//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebYemekSiparisi.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class urun
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public urun()
        {
            this.satisdetaylari = new HashSet<satisdetaylari>();
        }
    
        public int urunid { get; set; }
        public string urunad { get; set; }
        public int menuid { get; set; }
        public int altmenuid { get; set; }
        public decimal urunfiyat { get; set; }
        public string urunbilgisi { get; set; }
        public string urunresimyolu1 { get; set; }
        public string urunresimyolu2 { get; set; }
        public bool silindi { get; set; }
    
        public virtual menu menu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<satisdetaylari> satisdetaylari { get; set; }
    }
}