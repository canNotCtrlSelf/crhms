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
                            <li><a href="/crhms/pages/doctor/home.jsp">主页</a></li>
                            <li>个人中心</li>
                            <li>查看信息</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <div>
                            <ul class="list-group">
                                <li class="list-group-item active"><h3>个人信息</h3></li>
                                <li class="list-group-item custom-font-medium">
                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名: ${sessionScope.doctorInfo.truename}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别: ${sessionScope.doctorInfo.gender}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄: ${sessionScope.doctorInfo.age}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称: ${sessionScope.doctorInfo.job_title}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    任职医院: ${sessionScope.doctorInfo.serving_hospital}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    个人简介: ${sessionScope.doctorInfo.personal_profile}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    擅长方向: ${sessionScope.doctorInfo.expert_in}
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
                                        <form action="/crhms/doctorInfo/update.do" method="post">
                                            <div class="modal-body">
                                                <p class="custom-p">
                                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:
                                                    <input type="text" value="${sessionScope.doctorInfo.truename}"
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
                                                    <input type="text" value="${sessionScope.doctorInfo.age}"
                                                           name="age" placeholder="选择开始日期">
                                                </p>
                                                <p class="custom-p">
                                                    职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:
                                                    <select name="job_title">
                                                        <option value="主任医师">主任医师</option>
                                                        <option value="副主任医师">副主任医师</option>
                                                        <option value="主治医师">主治医师</option>
                                                        <option value="医师" selected>医师</option>
                                                    </select>
                                                </p>
                                                <p class="custom-p">
                                                    任职医院:
                                                    <input type="text"
                                                           value="${sessionScope.doctorInfo.serving_hospital}"
                                                           name="serving_hospital" placeholder="请输入身份证号">
                                                </p>
                                                <p class="custom-p">
                                                    个人简介:
                                                    <input type="text"
                                                           value="${sessionScope.doctorInfo.personal_profile}"
                                                           name="personal_profile" placeholder="请输入籍贯">
                                                </p>
                                                <p class="custom-p">
                                                    擅长方向:
                                                    <input type="tel" value="${sessionScope.doctorInfo.expert_in}"
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
