namespace BTLWebForm.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Shipment")]
    public partial class Shipment
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shipment()
        {
            Orders = new HashSet<Order>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int shipment_id { get; set; }

        public DateTime? shipment_date { get; set; }

        [StringLength(100)]
        public string address { get; set; }

        [StringLength(100)]
        public string city { get; set; }

        [StringLength(100)]
        public string state { get; set; }

        [StringLength(50)]
        public string country { get; set; }

        [StringLength(10)]
        public string zip_code { get; set; }

        public int? Customer_customer_id { get; set; }

        public virtual Customer Customer { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
