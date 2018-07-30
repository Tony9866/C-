<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Info.Master" AutoEventWireup="true"
    CodeBehind="RecruitmentList.aspx.cs" Inherits="HotelWebProject.CompanyInfo.RecruitmentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Styles/Rec.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <div class="outdiv">
        <div class="titlediv">
            <div class="position">
                招聘职位</div>
            <div class="place">
                工作地点</div>
            <div class="needcount">
                招聘人数</div>
            <div class="detail">
                详情</div>
        </div>
        <div class="itemdiv">
            <div class="position">
                <a href='RecruitmentDetail.aspx?PostId=100000' target="_blank">大堂经理</a></div>
            <div class="place">
                天津</div>
            <div class="needcount">
                2</div>
            <div class="detail">
                <a href='RecruitmentDetail.aspx?PostId=100000' target="_blank">详情</a></div>
        </div>
        <div class="itemdiv">
            <div class="position">
                <a href='RecruitmentDetail.aspx?PostId=100001' target="_blank">接待员</a></div>
            <div class="place">
                北京</div>
            <div class="needcount">
                5</div>
            <div class="detail">
                <a href='RecruitmentDetail.aspx?PostId=100001' target="_blank">详情</a></div>
        </div>
        <div class="itemdiv">
            <div class="position">
                <a href='RecruitmentDetail.aspx?PostId=100002' target="_blank">总经理助理</a></div>
            <div class="place">
                天津</div>
            <div class="needcount">
                1</div>
            <div class="detail">
                <a href='RecruitmentDetail.aspx?PostId=100002' target="_blank">详情</a></div>
        </div>
    </div>
</asp:Content>
