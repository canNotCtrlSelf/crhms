<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/24
  Time: 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>性别分布</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css"/>
        <!-- 导入图标样式 -->
        <link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.min.css">
        <!-- 导入自定义样式表合集 -->
        <link rel="stylesheet" href="../../css/custom-style.css"/>
        <!-- 导入自定义logo/顶部导航 -->
        <link rel="stylesheet" href="../../css/custom-navbar.css">
        <!-- 导入自定义侧边菜单 -->
        <link rel="stylesheet" href="../../css/custom-sliderbar.css">
        <!-- 导入自定义内容区域样式 -->
        <link rel="stylesheet" href="../../css/custom-content.css"/>
    </head>
    <body>
        <!-- 头部logo -->
        <!-- 引入header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        <!-- 头部logo / -->

        <div class="container" style="margin-top: 84px;">
            <div class="row">
                <div class="col-xs-2">
                    <!-- 侧边导航 -->
                    <%-- 引入侧边导航栏--%>
                    <jsp:include page="sidebar.jsp"></jsp:include>
                    <%-- 引入侧边导航栏 /--%>
                    <!-- 侧边导航 / -->
                </div>
                <div class="col-xs-10">
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><i class="glyphicon glyphicon-map-marker"></i> 当前位置</li>
                            <li><a href="/crhms/pages/community_admin/home.jsp">主页</a></li>
                            <li>数据统计</li>
                            <li>性别分布</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <h3>居民性别饼图演示</h3>
                        <p>
                            <canvas id="canvas_circle" width="500" height="300" style="border:2px solid #f5e79e;">
                                浏览器不支持canvas
                            </canvas>
                        </p>
                      <%--   <c:forEach items="${decadeArr}" var="decade">
                            ${decade}
                        </c:forEach> --%>
                    </div>
                </div>
            </div>
        </div>
        <script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/jquery-datatimepicker/jquery.datetimepicker.js" type="text/javascript"
                charset="utf-8"></script>

        <script src="../../js/common/common.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript" charset="utf-8">
            //绘制饼图
            function drawCircle(canvasId, data_arr, color_arr, text_arr) {
                var c = document.getElementById(canvasId);
                var ctx = c.getContext("2d");

                var radius = c.height / 2 - 20; //半径
                var ox = radius + 20, oy = radius + 20; //圆心

                var width = 30, height = 10; //图例宽和高
                var posX = ox * 2 + 20, posY = 30;   //
                var textX = posX + width + 5, textY = posY + 10;

                var startAngle = 0; //起始弧度
                var endAngle = 0;   //结束弧度
                for (var i = 0; i < data_arr.length; i++) {
                    //绘制饼图
                    endAngle = endAngle + data_arr[i] * Math.PI * 2; //结束弧度
                    ctx.fillStyle = color_arr[i];
                    ctx.beginPath();
                    ctx.moveTo(ox, oy); //移动到到圆心
                    ctx.arc(ox, oy, radius, startAngle, endAngle, false);
                    ctx.closePath();
                    ctx.fill();
                    startAngle = endAngle; //设置起始弧度

                    //绘制比例图及文字
                    ctx.fillStyle = color_arr[i];
                    ctx.fillRect(posX, posY + 20 * i, width, height);
                    ctx.moveTo(posX, posY + 20 * i);
                    ctx.font = 'bold 12px 微软雅黑';    //斜体 30像素 微软雅黑字体
                    ctx.fillStyle = color_arr[i]; //"#000000";
                    var percent = text_arr[i] + "：" + 100 * data_arr[i] + "%";
                    ctx.fillText(percent, textX, textY + 20 * i);
                }
            }

            function init() {
                //绘制饼图
                <%--var myName = ${sessionScope.decadeArr};--%>
                // for (var x of myName) {
                //     console.log(x);
                // }
                // alert(myName);

                //比例数据和颜色
                var data_arr = [0.05, 0.25];
                // var data_arr;
                <c:forEach items="${genderArr}" var="gen" varStatus="v">
                 data_arr[${v.index}] = ${gen};
                </c:forEach>
                var color_arr = ["#00AABB", "#FF4400"];
                var text_arr = ["男", "女"];

                drawCircle("canvas_circle", data_arr, color_arr, text_arr);
            }

            //页面加载时执行init()函数
            window.onload = init;
        </script>
    </body>
</html>
