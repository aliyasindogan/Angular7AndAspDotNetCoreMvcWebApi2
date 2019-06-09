using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi2.Models.ComplexType
{
    public class ProductDetail
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
        /// <summary>
        /// Kategori Adı
        /// </summary>
        public string CategoryName { get; set; }
    }
}
