<%--
  Created by IntelliJ IDEA.
  User: bkf
  Date: 2019/3/2
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <meta name="format-detection" content="telephone=no, email=no, date=no, address=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <link href="static/css/bksystem.css" rel="stylesheet" type="text/css" />
    <link href="static/font/iconfont.css" rel="stylesheet" type="text/css" />
    <link href="static/css/module.css" rel="stylesheet" type="text/css" />
    <link href="static/css/pages.css" rel="stylesheet" type="text/css" />
    <title>商品管理</title>
    <script src="static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="static/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="static/js/HUpages.js" type="text/javascript"></script>
    <script src="static/js/common.js" type="text/javascript"></script>
</head>

<body id="situation">
<div class="pages-style" >
    <!--左侧菜单栏-->
    <div class="bk-con-menu " id="bk-con-menu">
        <div class="menubtn">
            <span class="close_btn samebtn"><i>隐藏</i></span>
            <span class="show_btn samebtn"><i>显示</i></span>
        </div>
        <div class="title-menu">栏目分类</div>
        <div class="breadcrumb" id="breadcrumb">
            <ul class="clearfix menu-section menulist" id="menu-section">

            </ul>
        </div>
    </div>
    <!--右侧内容-->
    <div class="bk-con-message message-section" id="iframe_box">
        <!--编辑内容-->
        <div class="operation  mb15">
            <button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;批量删除</button>
            <button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加广告</button>
            <button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加分类</button>
        </div>
        <!--列表内容-->
        <div class="page_content clearfix mb15 table-module ">
            <table class="gallery table table_list table_striped table-bordered " id="">
                <thead>
                <tr>
                    <th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
                    <th >分类</th>
                    <th width="130">图片</th>
                    <th >尺寸（大小）</th>
                    <th >链接地址</th>
                    <th >加入时间</th>
                    <th >状态</th>
                    <th >操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
                    <td>幻灯片</td>
                    <td><a href="images/ad/ad.jpg" class="zoomimg"><img src="images/ad/ad.jpg"  width="100%" height="100%"/></a></td>
                    <td>1920*680</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
                    <td>幻灯片</td>
                    <td><a href="images/ad/ad1.jpg" class="zoomimg"><img src="images/ad/ad1.jpg"  width="100%" height="100%"/></a></td>
                    <td>1920*680</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>

                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
<script>
    $(function(){
        //内页框架结构编辑
        $("#situation").Hupage({
            slide: '#breadcrumb',
            padding:15,
            menuModule:'#bk-con-menu', //菜单模块
            pagecontent:'.page_content',//自定义属性
            operation:'.operation',//自定义属性
            scrollbar:function(e){
                e.niceScroll({
                    cursorcolor: "#dddddd",
                    cursoropacitymax: 1,
                    touchbehavior: false,
                    cursorwidth: "3px",
                    cursorborder: "0",
                    cursorborderradius: "3px",
                });
            },
            expand:function(thisBox,settings){
                var pc="";
                $(settings.pagecontent).css("margin-bottom")!=null? pc=parseInt($(settings.pagecontent).css("margin-bottom").replace("px","")):'';
                $(settings.pagecontent).css({height:$(window).height()-$(settings.operation).outerHeight()-pc-(settings.padding*2)})
                settings.scrollbar($(settings.slide) && $(settings.pagecontent));
            }//自定义方法
        });
    });
</script>

