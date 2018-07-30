using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Models;


namespace DAL
{

    /// <summary>
    /// 管理员数据访问类
    /// 从session里面看看是否登录了 有没有值
    /// </summary>
   public class SysAdminService
    {
        /// <summary>
        /// 用户登录的方法
        /// </summary>
        /// <param name="loginId"></param>
        /// <param name="loginPwd"></param>
        /// <returns></returns>
        public SysAdmin AdminLogin(string loginId, string loginPwd)//()里是用户所传递的参数 其中loginId是用户的id
        {
            ///查询sql语句
            string sql = "select LoginName from SysAdmins where LoginId = @LoginId and LoginPwd = @LoginPwd";
            //参数传过去
            SqlParameter[] param = new SqlParameter[] 
            ///接下里是进行封装 都是数组
            {
                new SqlParameter("@LoginId",loginId),//@loginid 是参数 后面跟的是参数的值LoginId
                new SqlParameter("@LoginPwd",loginPwd)
            };
            //定义一个admin的对象
            SysAdmin ObjAdmin = null;
            //如果值查询一个LoginName 是单一结果返回 我们可以用单一方法在sqlhelper里singlereader， 如果是多个 用getreader
            object result = SQLHelper.GetsingleResult(sql, param);
            //进行判断
            if (result != null)
            {
                //把objadmin 从新更新一下到sysadmin
                ObjAdmin = new SysAdmin()
                {
                    LoginId = Convert.ToInt32(loginId),
                    LoginName = result.ToString(),
                    LoginPwd = loginId
                };
            }
            return ObjAdmin;
        }

        


    }
}
