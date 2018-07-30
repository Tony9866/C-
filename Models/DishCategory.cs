﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 菜品的分类
    /// </summary>
    [Serializable]
    public   class DishCategory
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
    }
}
