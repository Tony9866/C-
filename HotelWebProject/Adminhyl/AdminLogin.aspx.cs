using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Models;
using DAL;


namespace HotelWebProject.Adminhyl
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //数据验证 是否输入
            if (this.txtLoginId.Text.Trim().Length == 0)//trim() 转换成长度计算
            {
                this.ltaMsg.Text = "<script>alert('登陆账号未输入')</script>";
                return;
            }
            if (this.txtLoginPwd.Text.Trim().Length == 0)
            {
                this.ltaMsg.Text = "<script>alert('登录密码未输入')</script>";
                return;
            }

            //调用后台，数据访问，实现用户登录 数据返回的是一个对象
            //给它从新定义一个叫objadmin的对象 把值都塞进这个叫sbjAdmin里
            SysAdmin objAdmin = new SysAdminService().AdminLogin(this.txtLoginId.Text.Trim(), this.txtLoginPwd.Text.Trim());//AdminLogin（值，值）把值都传过去 到models 里
            //通过判断当前的ObjAdmin是不是为空
            if (objAdmin == null)
            {
                this.ltaMsg.Text = "<script>alert('用户名或密码错误！')</script>";
            }
            //里面的session 必须跟Adminhyl.Master.cs里的session一样
            else
            {
                Session["SysAdmin"] = objAdmin;
                Response.Redirect("Default.aspx");
            }
        }
    }
}