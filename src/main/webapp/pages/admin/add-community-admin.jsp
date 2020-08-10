<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/21
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>管理健康管理员</title>
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
                            <li><a href="/crhms/pages/admin/home.jsp">主页</a></li>
                            <li>管理中心</li>
                            <li>添加社区健康管理员</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <form action="/crhms/admin/insertCommunityAdmin.do" method="post">
                            <ul class="list-group">
                                <li class="list-group-item active">
                                    <h3> 添加社区健康管理员 </h3>
                                </li>
                                <input type="hidden" name="role_id" value="4">
                                <li class="list-group-item custom-font-medium">
                                    用&nbsp;&nbsp;户&nbsp;&nbsp;名:
                                    <input type="text" name="username" placeholder="用户名">
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
                                    <input type="text" name="password" placeholder="密码">
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    管理社区:
                                    <input type="text" name="community_name" placeholder="请输入管理社区">
                                </li>
                                <li class="list-group-item text-center">
                                    <input type="submit" value="提交" class="btn btn-primary">
                                </li>
                            </ul>
                        </form>
                        <!-- 显示个人信息  /-->
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

