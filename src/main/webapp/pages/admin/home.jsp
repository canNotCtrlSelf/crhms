<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>管理员主页</title>
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

    <body class="">
        <!-- 引入header.jsp -->
        <jsp:include page="./header.jsp"></jsp:include>

        <div class="container" style="margin-top: 84px;">
            <div class="row">
                <div class="col-xs-2">
                    <%-- 引入侧边导航栏--%>
                    <jsp:include page="./sidebar.jsp"></jsp:include>
                    <%-- 引入侧边导航栏 /--%>
                </div>
                <div class="col-xs-10">
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><a href="#">主页</a></li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 轮播图 -->
                        <div id="myCarousel" class="carousel slide custom-carousel">
                            <!-- 轮播（Carousel）指标 -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <!-- 轮播（Carousel）项目 -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="../../img/home/photo1.png"
                                         alt="First slide">
                                    <div class="carousel-caption">标题 1</div>
                                </div>
                                <div class="item">
                                    <img src="../../img/home/photo2.png"
                                         alt="Second slide">
                                    <div class="carousel-caption">标题 2</div>
                                </div>
                                <div class="item">
                                    <img src="../../img/home/photo4.jpg"
                                         alt="Third slide">
                                    <div class="carousel-caption">标题 3</div>
                                </div>
                            </div>
                            <!-- 轮播（Carousel）导航 -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!-- 轮播图  /-->
                    </div>
                </div>
            </div>
        </div>
        <script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <!-- 引入vue -->
        <script src="../../js/resident/carousel.js" type="text/javascript" charset="utf-8"></script>
        <%--        <script src="../../js/resident/sliderbar.js" type="text/javascript" charset="utf-8"></script>--%>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
    </body>

</html>
