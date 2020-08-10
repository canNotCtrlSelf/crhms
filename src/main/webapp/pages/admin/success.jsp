<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/21
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
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
                        <a href="/crhms/admin/findAllCommunityAdmin.do">
                            <h3>操作成功，点击返回上一级。</h3>
                        </a>
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
