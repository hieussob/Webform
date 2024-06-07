using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace BTLWebForm.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Cart> Carts { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Order_item> Order_item { get; set; }
        public virtual DbSet<Payment> Payments { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Shipment> Shipments { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Wishlist> Wishlists { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>()
                .HasMany(e => e.Products)
                .WithOptional(e => e.Category)
                .HasForeignKey(e => e.Category_category_id);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.Carts)
                .WithRequired(e => e.Customer)
                .HasForeignKey(e => e.Customer_customer_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.Orders)
                .WithOptional(e => e.Customer)
                .HasForeignKey(e => e.Customer_customer_id);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.Payments)
                .WithOptional(e => e.Customer)
                .HasForeignKey(e => e.Customer_customer_id);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.Shipments)
                .WithOptional(e => e.Customer)
                .HasForeignKey(e => e.Customer_customer_id);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.Wishlists)
                .WithOptional(e => e.Customer)
                .HasForeignKey(e => e.Customer_customer_id);

            modelBuilder.Entity<Order>()
                .Property(e => e.total_price)
                .HasPrecision(10, 2);

            modelBuilder.Entity<Order>()
                .HasMany(e => e.Order_item)
                .WithRequired(e => e.Order)
                .HasForeignKey(e => e.Order_order_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Order_item>()
                .Property(e => e.price)
                .HasPrecision(10, 2);

            modelBuilder.Entity<Payment>()
                .Property(e => e.amount)
                .HasPrecision(10, 2);

            modelBuilder.Entity<Payment>()
                .HasMany(e => e.Orders)
                .WithOptional(e => e.Payment)
                .HasForeignKey(e => e.Payment_payment_id);

            modelBuilder.Entity<Product>()
                .Property(e => e.price)
                .HasPrecision(10, 2);

            modelBuilder.Entity<Product>()
                .HasMany(e => e.Carts)
                .WithOptional(e => e.Product)
                .HasForeignKey(e => e.Product_product_id);

            modelBuilder.Entity<Product>()
                .HasMany(e => e.Order_item)
                .WithOptional(e => e.Product)
                .HasForeignKey(e => e.Product_product_id);

            modelBuilder.Entity<Product>()
                .HasMany(e => e.Wishlists)
                .WithRequired(e => e.Product)
                .HasForeignKey(e => e.Product_product_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Shipment>()
                .HasMany(e => e.Orders)
                .WithOptional(e => e.Shipment)
                .HasForeignKey(e => e.Shipment_shipment_id);
        }
    }
}
