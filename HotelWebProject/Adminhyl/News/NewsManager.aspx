<%@ Page Title="" Language="C#" MasterPageFile="~/Adminhyl/Adminhyl.Master" AutoEventWireup="true"
    CodeBehind="NewsManager.aspx.cs" Inherits="HotelWebProject.Adminhyl.NewsManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/AdminCss.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="itemdiv">
        <div class="newsitem-title-1">
            发布时间</div>
        <div class="newsitem-title-2">
            新闻标题</div>
        <div class="newsitem-title-2">
            新闻分类</div>
        <div class="newsitem-title-3" style="width: 110px;">
            操作</div>
        <div class="newsitem-title-1">
            2014-08-04</div>
        <div class="newsitem-title-2">
            <a href='/CompanyNews/NewsDetail.aspx?newsId=1004' target="_blank">互联网的消费正在兴起</a></div>
        <div class="newsitem-title-2">
            社会新闻
        </div>
        <div class="newsitem-title-3" style="width: 110px;">
            <a href='NewsPublish.aspx?Operation=1&newsId=1004'>修改</a> <a href="#">删除</a></div>
        <div class="newsitem-title-1">
            2014-08-04</div>
        <div class="newsitem-title-2">
            <a href='/CompanyNews/NewsDetail.aspx?newsId=1003' target="_blank">本店正在热招加盟商</a></div>
        <div class="newsitem-title-2">
            公司新闻
        </div>
        <div class="newsitem-title-3" style="width: 110px;">
            <a href='NewsPublish.aspx?Operation=1&newsId=1003'>修改</a> <a href="#">删除</a></div>
        <div class="newsitem-title-1">
            2014-08-04</div>
        <div class="newsitem-title-2">
            <a href='/CompanyNews/NewsDetail.aspx?newsId=1001' target="_blank">本店正在热招加盟商</a></div>
        <div class="newsitem-title-2">
            公司新闻
        </div>
        <div class="newsitem-title-3" style="width: 110px;">
            <a href='NewsPublish.aspx?Operation=1&newsId=1001'>修改</a><a href="#">删除</a></div>
        <div class="newsitem-title-1">
            2014-08-04</div>
        <div class="newsitem-title-2">
            <a href='/CompanyNews/NewsDetail.aspx?newsId=1002' target="_blank">互联网的消费正在兴起</a></div>
        <div class="newsitem-title-2">
            社会新闻
        </div>
        <div class="newsitem-title-3" style="width: 110px;">
            <a href='NewsPublish.aspx?Operation=1&newsId=1002'>修改</a> <a href="#">删除</a></div>
        <div class="newsitem-title-1">
            2014-08-04</div>
        <div class="newsitem-title-2">
            <a href='/CompanyNews/NewsDetail.aspx?newsId=1000' target="_blank">迎接十一海鲜大促销</a></div>
        <div class="newsitem-title-2">
            公司新闻
        </div>
        <div class="newsitem-title-3" style="width: 110px;">
            <a href='NewsPublish.aspx?Operation=1&newsId=1000'>修改</a> <a href="#">删除</a></div>
    </div>
</asp:Content>
