using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace HotelWebProject.Adminhyl.Handler
{
    /// <summary>
    /// ExitSys 的摘要说明
    /// 该类必须引入命名空间System.Web.SessionState;
    /// 同时实现标记接口
    /// </summary>
    ///IRequiresSessionState实现一个特殊的标记接口。 只有aspx可以直接使用session 其他的都必须通过这种特殊的接口来实现这个。
    public class ExitSys : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //清楚session 
            //如果没有命名空间using System.Web.SessionState; 则无法获得session的值 会出现null的情况
            context.Session.Abandon();//取消回话
            context.Response.Redirect("./Adminhyl/AdminLogin.aspx");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}