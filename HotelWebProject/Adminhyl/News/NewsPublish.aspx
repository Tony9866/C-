<%@ Page Title="" Language="C#" MasterPageFile="~/Adminhyl/Adminhyl.Master" AutoEventWireup="true"
    CodeBehind="NewsPublish.aspx.cs" Inherits="HotelWebProject.Adminhyl.NewsPublish"
    ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Adminhyl/TxtEditor/themes/default/default.css" />
    <link rel="stylesheet" href="/Adminhyl/TxtEditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="/Adminhyl/TxtEditor/kindeditor.js"></script>
    <script charset="utf-8" src="/Adminhyl/TxtEditor/lang/zh_CN.js"></script>
    <script charset="utf-8" src="/Adminhyl/TxtEditor/plugins/code/prettify.js"></script>
    <script>
        KindEditor.ready(function (K) {
            var editor1 = K.create('#<%=txtContent.ClientID %>', {
                cssPath: '../TxtEditor/plugins/code/prettify.css',
                uploadJson: '../TxtEditor/upload_json.ashx',
                fileManagerJson: '../TxtEditor/file_manager_json.ashx',
                allowFileManager: true,
                afterCreate: function () {
                    var self = this;
                    K.ctrl(document, 13, function () {
                        self.sync();
                        K('form[name=form1]')[0].submit();
                    });
                    K.ctrl(self.edit.doc, 13, function () {
                        self.sync();
                        K('form[name=form1]')[0].submit();
                    });
                }
            });
            prettyPrint();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="txtContentdiv">
        <div class="txtItemdiv">
            新闻标题：<asp:TextBox ID="txtNewsTitle" class="txtTitle" runat="server"></asp:TextBox>&nbsp;&nbsp;新闻分类：<asp:DropDownList
                ID="ddlCategory" runat="server">
                <asp:ListItem Value="1">公司新闻</asp:ListItem>
                <asp:ListItem Value="2">社会新闻</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="txtItemdiv">
            新闻内容：</div>
        <div class="txtItemdiv">
            <textarea id="txtContent" cols="100" rows="8" style="width: 958px; height: 300px;
                visibility: hidden;" runat="server"></textarea></div>
        <div class="txtItemdiv">
            <asp:Button ID="btnPublish" CssClass="btncss" runat="server" Text="立即发布" />
            <asp:Literal ID="ltaMsg" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>
