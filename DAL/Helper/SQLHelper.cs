using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//引入命名空间
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DAL
{
    /// <summary>
    /// 通用数据访问类
    /// 添加sqlhelper类的时候， 先从dal层选择添加此类再创建文件夹 拖拽此helper类进文件夹。 其目的是方便 其他类在dal类库中的引用。
    /// </summary>
  public  class SQLHelper
    {
        //连接字符串
        private static string connString = ConfigurationManager.ConnectionStrings["connString"].ToString();


        /// <summary>
        /// 执行增删改操作
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static int Update(string sql)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(sql, conn); //sql 是sql命令语句。
            conn.Open();
            int result = cmd.ExecuteNonQuery();
            conn.Close();
            return result;
        }

        /// <summary>
        /// 返回一个单一结果查询。
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static object GetsingleResult(string sql)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(sql, conn); //sql 是sql命令语句。
            conn.Open();
            object result = cmd.ExecuteScalar();
            conn.Close();
            return result;
        }

        /// <summary>
        /// 返回一个数据集的查询
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static SqlDataReader GetReader(string sql)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(sql, conn); //sql 是sql命令语句。
            conn.Open();
            return cmd.ExecuteReader(CommandBehavior.CloseConnection);//CommandBehavior.CloseConnection能够保证当SqlDataReader对象被关闭时，其依赖的连接也会被自动关闭.
        }

        /// <summary>
        /// 主要使用下面 方法 上面只是作为巩固 是基础的。
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        #region 执行带参数的sql语句（其目的是为了安全性考虑，不会被注入式攻击。 无法看到源吗）上边所展示的跟下面展示的功能一样 无外乎一个更安全

        public static int Update(string sql, SqlParameter[] parameters)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(sql, conn); //sql 是sql命令语句。
            try
            {
                //打开连接
                conn.Open();
                cmd.Parameters.AddRange(parameters);//添加参数 直接添加一整个。
                int result = cmd.ExecuteNonQuery();
                return result;
            }
            catch (Exception ex)
            {
                //写入日志

                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        //获得单一结果查询
        public static object GetsingleResult(string sql, SqlParameter[] parameters)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(sql, conn); //sql 是sql命令语句。
            try
            {
                //打开连接
                conn.Open();
                cmd.Parameters.AddRange(parameters);//添加参数 直接添加一整个。
                object result = cmd.ExecuteScalar();//使用获得方法 scalar
                return result;
            }
            catch (Exception ex)
            {
                //写入日志

                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        //返回一个数据集的查询
        public static object GetReader(string sql, SqlParameter[] parameters)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(sql, conn); //sql 是sql命令语句。
            try
            {
                //打开连接
                conn.Open();
                cmd.Parameters.AddRange(parameters);//添加参数 直接添加一整个。
                return cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                //写入日志
                conn.Close();
                throw ex;
            }
            //不能使用finally 因为你把读取器关闭 前边的都无法关闭了。 一定要从外边读取这个conn。close（）； 关闭
            //finally
            //{
            //    conn.Close();
            //}
        }



        #endregion

    }
}
