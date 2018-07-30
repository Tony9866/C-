<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Dishes.Master" AutoEventWireup="true"
    CodeBehind="DishesShow.aspx.cs" Inherits="HotelWebProject.CompanyDishes.DishesShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Styles/Dishes.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <div id="dishitem">
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin01.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜一</a>&nbsp;￥45
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin02.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜二</a>
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin03.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜三</a>
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin04.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜四</a>
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin05.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜五</a>
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin06.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜六</a>
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin07.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜七</a>
            </div>
        </div>
        <div class="ditem">
            <div class="dimgdiv">
                <img src="../Images/dish/caipin08.jpg" />
            </div>
            <div class="dishname">
                <a href="#">招牌菜八</a>
            </div>
        </div>
    </div>
</asp:Content>
