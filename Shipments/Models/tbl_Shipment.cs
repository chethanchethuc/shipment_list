//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Shipments.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Shipment
    {
        public int shipment_Id { get; set; }
        public string sender_Name { get; set; }
        public string description { get; set; }
        public string recipient_Address { get; set; }
        public Nullable<bool> expedited { get; set; }
        public string shipment_Type { get; set; }
    }
}