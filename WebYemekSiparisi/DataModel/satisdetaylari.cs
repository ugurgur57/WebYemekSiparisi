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
    
    public partial class satisdetaylari
    {
        public int id { get; set; }
        public int satisno { get; set; }
        public int urunid { get; set; }
        public int adet { get; set; }
        public decimal birimfiyat { get; set; }
        public Nullable<decimal> tutar { get; set; }
        public bool silindi { get; set; }
    
        public virtual satislar satislar { get; set; }
        public virtual urun urun { get; set; }
    }
}