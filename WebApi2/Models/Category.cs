using System;
using System.Collections.Generic;
using System.Text;

namespace WebApi2.Models
{
    /// <summary>
    /// Kategoriler
    /// </summary>
    public class Category
    {
        /// <summary>
        /// Kategori ID
        /// </summary>
        public int CategoryID { get; set; }
        /// <summary>
        /// Kategori Adı
        /// </summary>
        public string CategoryName { get; set; }
        /// <summary>
        /// Aktif Mi?
        /// </summary>
        public bool IsActive { get; set; }
        /// <summary>
        /// Sıra No
        /// </summary>
        public int Order { get; set; }
    }
}
