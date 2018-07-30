using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;

namespace HotelWebProject.Adminhyl
{
    public partial class Adminhyl : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //判断 如果没登录 强制跳转到登录页面
            //SysAdmin 随便起一个名字 这个session的名字就叫SysAdmin
            if (Session["SysAdmin"] == null)
                Response.Redirect("../Adminhyl/AdminLogin.aspx");
            else
                //ltaAdmin 是前台的一个显示Id 名是ltaAdmin
                //获取session里参数的值 传递给前台text的框体里 
                //先获取session 得到的值SysAdmin 然后用moderls 把它转换成SysAdmin 可以调用LoginName
                //此处的是object类型 转换成admin类型
                this.ltaAdmin.Text = "[当前用户：" + ((SysAdmin)Session["SysAdmin"]).LoginName + "]";
        }
    }
}