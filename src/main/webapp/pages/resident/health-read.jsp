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
                            <li>健康资讯</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!--健康资讯-->
                        <div class="newslistsyle left">
                            <h2>健康资讯</h2>
                            <ul class="newslist" style="padding-inline-start: 20px;">
                                <li><p><a href="./news/68789.jsp" target="_blank">照顾好口腔，关乎你的全身健康</a></p></li>
                                <li><p><a href="./news/68788.jsp" target="_blank">你了解房颤吗？好心情可以减少房颤的发展</a></p></li>
                                <li><p><a href="./news/68787.jsp" target="_blank">东西方人谁更易得抑郁症？全球有超过4%的</a></p></li>
                                <li><p><a href="./news/68786.jsp" target="_blank">夏秋相交腹泻高发&nbsp;别随便吃抗生素、止泻</a></p></li>
                                <li><p><a href="./news/68785.jsp" target="_blank">体检出甲状腺结节该怎么办</a></li>
                                <li><p><a href="./news/68784.jsp" target="_blank">丙肝潜伏期长达10-20年&nbsp;没有疫苗可以预</a></p></li>
                            </ul>
                        </div>
                        <!--健康资讯/-->
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
