using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 每一个类都要要是public 公共的才能调用。 
    /// 菜品实体类
    /// </summary>
    [Serializable]//序列化
    public  class Dish
    {
        public int DishId { get; set; }
        public string DishName { get; set; }
        public int UnitPrice { get; set; }
        public int CategoryId { get; set; }

        //扩展属性 (一般都是外键关联的内容 主外键关系做查询)
        public string CategoryName { get; set; }
    }
}
