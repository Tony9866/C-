<%@ Page Title="" Language="C#" MasterPageFile="~/Adminhyl/Adminhyl.Master" AutoEventWireup="true"
    CodeBehind="DishesManager.aspx.cs" Inherits="HotelWebProject.Adminhyl.DishesManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Styles/Dishes.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="dishcategory">
        菜品分类：<asp:DropDownList ID="ddlCategory" runat="server" CssClass="btncss">
        </asp:DropDownList>
        &nbsp;<asp:Button ID="btnQuery" CssClass="btncss" runat="server" Text="提交查询"  />
    </div>
    <div id="dishlistdiv">
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/100.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：水煮鱼</div>
            <div class="dishlist-txt">
                菜品分类：川菜</div>
            <div class="dishlist-txt">
                菜品价格：￥50</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=100'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/101.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：回锅肉</div>
            <div class="dishlist-txt">
                菜品分类：川菜</div>
            <div class="dishlist-txt">
                菜品价格：￥85</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=101'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/102.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：剁椒鱼头</div>
            <div class="dishlist-txt">
                菜品分类：湘菜</div>
            <div class="dishlist-txt">
                菜品价格：￥75</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=102'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/103.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：红椒腊牛肉</div>
            <div class="dishlist-txt">
                菜品分类：湘菜</div>
            <div class="dishlist-txt">
                菜品价格：￥40</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=103'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/104.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：糖醋鲤鱼</div>
            <div class="dishlist-txt">
                菜品分类：鲁菜</div>
            <div class="dishlist-txt">
                菜品价格：￥70</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=104'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/105.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：玉记扒鸡</div>
            <div class="dishlist-txt">
                菜品分类：鲁菜</div>
            <div class="dishlist-txt">
                菜品价格：￥60</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=105'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/106.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：汤爆双脆</div>
            <div class="dishlist-txt">
                菜品分类：鲁菜</div>
            <div class="dishlist-txt">
                菜品价格：￥90</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=106'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
        <div class="dishlist-item">
            <div class="dishlist-img">
                <img src='/Images/dish/107.png' alt="" />
            </div>
            <div class="dishlist-txt">
                菜品名称：赤贝</div>
            <div class="dishlist-txt">
                菜品分类：海鲜类</div>
            <div class="dishlist-txt">
                菜品价格：￥80</div>
            <div class="dishlist-txt">
                <a href='/Adminhyl/Dishes/DishesPublish.aspx?Operation=1&dishId=107'>修改</a>&nbsp;&nbsp;
                <a href="#">删除</a>
            </div>
        </div>
    </div>
</asp:Content>
