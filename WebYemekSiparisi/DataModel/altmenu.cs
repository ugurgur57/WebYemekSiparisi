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
    
    public partial class altmenu
    {
        public int altmenuid { get; set; }
        public int menuid { get; set; }
        public string altmenuad { get; set; }
        public string aciklama { get; set; }
        public bool silindi { get; set; }
    
        public virtual menu menu { get; set; }
    }
}