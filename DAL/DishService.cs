using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Models;

namespace DAL
{
    /// <summary>
    /// 菜品数据访问类
    /// </summary>
 public   class DishService
    {
        /// <summary>
        /// 获取菜品分类
        /// </summary>
        /// <returns></returns>
        public List<DishCategory> GetAllCategory()
        {
            string sql = "select CategoryId, CategoryName from DishCategory";
            //定义一个list的集合
            List<DishCategory> list = new List<DishCategory>();
           //调用sqlhelper的通用数据访问
            SqlDataReader objReader = SQLHelper.GetReader(sql);//sql语句传递进 getReader的方法里
            //使用while循环
            while (objReader.Read())
            {
                //添加一个新的集 命名为dishcategory 然后进行封装
                list.Add(new DishCategory
                {
                    CategoryId = Convert.ToInt32(objReader["CategoryId"]),
                    CategoryName = objReader["CategoryName"].ToString()
                });
            }
            //关闭dataReader这个通用方法
            objReader.Close();
            return list;
        }

        public int AddDish(Dish objDish)
        {
            string sql = "insert into Dishes(DishName,UnitPrice,CategoryId)";
            sql += "values (@DishName,@UnitPrice,@CategoryId)";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@DishName",objDish.DishName),
                new SqlParameter("@UnitPrice",objDish.UnitPrice),
                new SqlParameter("@CategoryId",objDish.CategoryId)
            };
            return;
        }
    }
}
