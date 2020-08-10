<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>修改密码</title>
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
                    <div class="main-content" style="height: 650px;">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><i class="glyphicon glyphicon-map-marker"></i> 当前位置</li>
                            <li><a href="/crhms/pages/resident/home.jsp">主页</a></li>
                            <li>个人中心</li>
                            <li>修改密码</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <div>
                            <ul class="list-group">
                                <li class="list-group-item active">
                                    <h3> 修改密码 </h3>
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
                                    <input type="password" id="my-password" readonly style="border: 0px;outline:none;cursor: pointer;" value="${sessionScope.userRegister.password}">
                                    <input type="button" id="changeStatus" value="显示">
                                </li>
                                <li class="list-group-item">
                                    <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                        修改密码
                                    </button>
                                </li>

                            </ul>
                            <%-- 模态框--%>
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                &times;
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">
                                                修改密码
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="/crhms/userRegister/changePwd.do" method="post">
                                                密码: <input type="text" name="password" placeholder="请输入密码">
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                                        取消
                                                    </button>
                                                    <button type="submit" class="btn btn-primary">
                                                        提交更改
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal -->
                            </div>
                            <%--  模态框/--%>
                        </div>
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
        <script src="../../js/common/common2.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script> </body>
</html>
