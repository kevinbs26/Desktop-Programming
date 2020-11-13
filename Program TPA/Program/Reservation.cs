//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Program
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reservation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Reservation()
        {
            this.Deductions = new HashSet<Deduction>();
        }
    
        public int ReservationId { get; set; }
        public System.DateTime CheckIn { get; set; }
        public System.DateTime CheckOut { get; set; }
        public int RoomId { get; set; }
        public int DepositMoney { get; set; }
        public int ReservationFee { get; set; }
        public Nullable<int> ReviewId { get; set; }
        public string ComplaintId { get; set; }
        public int DeleteReservation { get; set; }
        public int TicketAvaibility { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Deduction> Deductions { get; set; }
    }
}