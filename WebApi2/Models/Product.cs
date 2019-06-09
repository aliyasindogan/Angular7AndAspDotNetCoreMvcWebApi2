namespace WebApi2.Models
{
    /// <summary>
    /// Urunler
    /// </summary>
    public class Product
    {
        /// <summary>
        /// Ürün ID
        /// </summary>
        public int ProductID { get; set; }
        /// <summary>
        /// Kategori ID
        /// </summary>
        public int CategoryID { get; set; }
        /// <summary>
        /// Kategori Adi
        /// </summary>
        public string ProductName { get; set; }
        /// <summary>
        /// Fiyat
        /// </summary>
        public decimal Price { get; set; }
        /// <summary>
        /// Stok Birimi
        /// </summary>
        public int UnitInStock { get; set; }
        /// <summary>
        /// Fiyat KDV
        /// </summary>
        public int PriceVat { get; set; }
    }
}
