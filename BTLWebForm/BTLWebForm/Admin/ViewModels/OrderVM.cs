using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWebForm.Admin.ViewModels
{
    public class OrderVM
    {
        public string order_id { get; set; }

        public string order_product_name {  get; set; }

        public int customer_id { get; set; }
        public DateTime order_date {  get; set; }
        public string status { get; set; }
    }
}