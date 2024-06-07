namespace BTLWebForm.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            Order_item = new HashSet<Order_item>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int order_id { get; set; }

        public DateTime? order_date { get; set; }

        public decimal? total_price { get; set; }

        public int? Customer_customer_id { get; set; }

        public int? Payment_payment_id { get; set; }

        public int? Shipment_shipment_id { get; set; }

        public virtual Customer Customer { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order_item> Order_item { get; set; }

        public virtual Payment Payment { get; set; }

        public virtual Shipment Shipment { get; set; }
    }
}
