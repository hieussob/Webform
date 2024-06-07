namespace BTLWebForm.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Order_item
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int order_item_id { get; set; }

        public int? quantity { get; set; }

        public decimal? price { get; set; }

        public int? Product_product_id { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Order_order_id { get; set; }

        public virtual Order Order { get; set; }

        public virtual Product Product { get; set; }
    }
}
