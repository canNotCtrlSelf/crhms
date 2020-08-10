<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>健康资讯</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../../plugins/jquery-datatimepicker/jquery.datetimepicker.css">
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
        <style>
            video {
                width: 100%;
                height: auto;
            }
        </style>
    </head>

    <body class="">
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
                            <li><a href="/crhms/pages/resident/home.jsp">主页</a></li>
                            <li>健康教育</li>
                            <li>医学微视</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!--医学微视-->
                        <h3>急性心肌梗死是怎么回事？会危及到生命吗？</h3>
                        <video width="400" controls>
                            <source src="../../videos/2020520.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>
                        <h3>什么是脑卒中？和高血压有什么关系？</h3>
                        <video width="400" controls>
                            <source src="../../videos/2020521.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>
                        <h3>为什么怀孕期间要定期做孕检？</h3>
                        <video width="400" controls>
                            <source src="../../videos/2020522.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>
                        <h3>为什么说“熬夜使人发胖”？</h3>
                        <video width="400" controls>
                            <source src="../../videos/2020523.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>
                        <h3>什么是血液病？</h3>
                        <video width="400" controls>
                            <source src="../../videos/2020524.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>
                        <!--医学微视/-->
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
    </body>

</html>

