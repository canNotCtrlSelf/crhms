<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>查看信息</title>
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
                    <%-- 引入侧边导航栏--%>
                    <jsp:include page="sidebar.jsp"></jsp:include>
                    <%-- 引入侧边导航栏 /--%>
                </div>
                <div class="col-xs-10">
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li>当前位置</li>
                            <li><a href="/crhms/pages/health-manager/home.jsp">主页</a></li>
                            <li>个人中心</li>
                            <li>查看信息</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <div>
                            <ul class="list-group">
                                <li class="list-group-item active"><h3>个人信息</h3></li>
                                <li class="list-group-item custom-font-medium">
                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名: ${sessionScope.healthManager.truename}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别: ${sessionScope.healthManager.gender}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄: ${sessionScope.healthManager.age}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    居&nbsp;住&nbsp;地: ${sessionScope.healthManager.address}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    证书级别: ${sessionScope.healthManager.certification_level}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    职业经历: ${sessionScope.healthManager.professional_history}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    教育经历: ${sessionScope.healthManager.educational_experience}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    个人简介: ${sessionScope.healthManager.personal_profile}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    擅长方向: ${sessionScope.healthManager.expert_in}
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
                                                修改个人信息
                                            </h4>
                                        </div>
                                        <form action="/crhms/healthManager/update.do" method="post">
                                            <div class="modal-body">
                                                <input type="hidden" name="register_id" value="${sessionScope.healthManager.register_id}">
                                                <p class="custom-p">
                                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:
                                                    <input type="text" value="${sessionScope.healthManager.truename}"
                                                           name="truename" placeholder="请输入姓名">
                                                </p>
                                                <p class="custom-p">
                                                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:
                                                    <label>
                                                        <input type="radio" name="gender" value="男" checked>男
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="gender" value="女">女
                                                    </label>
                                                </p>
                                                <p class="custom-p">
                                                    年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:
                                                    <input type="text" value="${sessionScope.healthManager.age}"
                                                           name="age" placeholder="选择开始日期">
                                                </p>
                                                <p class="custom-p">
                                                    居&nbsp;住&nbsp;地:
                                                    <input type="text" value="${sessionScope.healthManager.address}"
                                                           name="address" placeholder="请输入居住地">
                                                </p>
                                                <p class="custom-p">
                                                    证书级别:
                                                    <select name="certification_level">
                                                        <option>选择级别</option>
                                                        <option value="一级">一级</option>
                                                        <option value="二级">二级</option>
                                                        <option value="三级">三级</option>
                                                        <option value="四级">四级</option>
                                                        <option value="五级">五级</option>
                                                    </select>
                                                </p>
                                                <p class="custom-p">
                                                    职业经历:
                                                    <input type="text"
                                                           value="${sessionScope.healthManager.professional_history}"
                                                           name="professional_history" placeholder="请输入籍贯">
                                                </p>
                                                <p class="custom-p">
                                                    教育经历:
                                                    <input type="tel"
                                                           value="${sessionScope.healthManager.educational_experience}"
                                                           name="educational_experience" placeholder="请输入电话">
                                                </p>
                                                <p class="custom-p">
                                                    个人简介:
                                                    <input type="tel"
                                                           value="${sessionScope.healthManager.personal_profile}"
                                                           name="personal_profile" placeholder="请输入电话">
                                                </p>
                                                <p class="custom-p">
                                                    擅长方向:
                                                    <input type="tel"
                                                           value="${sessionScope.healthManager.expert_in}"
                                                           name="expert_in" placeholder="请输入电话">
                                                </p>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    取消
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    提交更改
                                                </button>
                                            </div>
                                        </form>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal -->
                            </div>
                            <%--  模态框/--%>
                            <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
                                修改信息
                            </button>
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
    </body>

</html>
